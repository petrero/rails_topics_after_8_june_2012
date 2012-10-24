require "spec_helper"

RSpec::Matchers.define :allow do |*args|
	match do |permission|
		permission.allow?(*args).should be_true
	end
end

RSpec::Matchers.define :allow_param do |*args|
	match do |permission|
		permission.allow_param?(*args).should be_true
	end
end


describe Permission do
	describe "as guest" do
		subject {Permission.new(nil)}
		it { should allow("topics", "index") }
		it { should allow("topics", "show") }
		it { should_not allow("topics", "new") }
		it { should_not allow("topics", "create") }
		it { should_not allow("topics", "edit") }
		it { should_not allow("topics", "update") }
		it { should_not allow("topics", "destroy") }

		it { should allow("sessions", "new") }
		it { should allow("sessions", "create") }
		it { should allow("sessions", "destroy") }

		it { should allow("users", "new") }
		it { should allow("users", "create") }
		it { should_not allow("users", "edit") }
		it { should_not allow("users", "update") }
	end	

	describe "as admin" do
		subject {Permission.new(build(:user, admin: true))}
		it { should allow("anything", "here") }
		it { should allow_param(:anything, :here) }
	end	

	describe "as member" do
		let(:user) { create(:user, admin: false) }
		let(:user_topic) { build(:topic, user: user) }
		let(:other_topic) { build(:topic) }
		subject {Permission.new(user)}

		it "allows topics" do
			should allow("topics", "index") 
			should allow("topics", "show") 
			should allow("topics", "new") 
			should allow("topics", "create") 
			should_not allow("topics", "edit") 
			should_not allow("topics", "update") 
			should_not allow("topics", "edit", other_topic) 
			should_not allow("topics", "update", other_topic) 
			should allow("topics", "edit", user_topic) 
			should allow("topics", "update", user_topic) 
			should_not allow("topics", "destroy") 

			should allow_param(:topic, :name) 
			should_not allow_param(:topic, :sticky)

			should allow("sessions", "new") 
			should allow("sessions", "create") 
			should allow("sessions", "destroy") 

			should allow("users", "new") 
			should allow("users", "create") 
			should allow("users", "edit") 
			should allow("users", "update") 
		end
	end		
end
