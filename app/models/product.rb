class Product < ActiveRecord::Base
  def filesize(*args)
		@filesize ||= {}
    @filesize[args] ||= calculate_filesize(*args) 
  end

private
	def calculate_filesize(num = 1)
		sleep 0.5
	  4815162342 * num
	end
end
