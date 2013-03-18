# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def user(name)
  User.where(name: name).first_or_create(password: "secret")
end

user("Daniel").haikus.create! content: "Error in syntax\nhaiku dot c line two\ntoo few syllables", published_at: 23000.minutes.ago
user("Jack").haikus.create! content: "To get some more hearts\nPress up, down, up, down, left, right\nLeft, right, B, A, Start", published_at: 16012.minutes.ago
user("Safiya").haikus.create! content: "When faced with trouble\nand in need of an escape\ndivide by zero.", published_at: 8209.minutes.ago
user("T-Shirt").haikus.create! content: "Haikus are easy\nbut sometimes they don't make sense\nrefrigerator", published_at: 3208.minutes.ago
user("Mitchell").haikus.create! content: "Error 404:\nYour haiku could not be found.\nTry again later.", published_at: 2403.minutes.ago
user("Evan").haikus.create! content: "If time is money,\nAre ATMs time machines?\nYour mind has been blown.", published_at: 205.minutes.ago
user("Jeffrey").haikus.create! content: "The tricorder broke\ncommunicator is dead\nand my shirt is red", published_at: 70.minutes.ago
user("RyanB")
