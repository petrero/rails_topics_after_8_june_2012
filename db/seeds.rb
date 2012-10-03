# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Topic.create! name: "Looking Forward to Rails 4.0", sticky: false
t.posts.create! content: "Rails 4.0 will be great!"
t.posts.create! content: "Yes, I can't wait"

t = Topic.create! name: "Anyone tried strong_parameters?", sticky: false
t.posts.create! content: "This plugin looks useful"
t.posts.create! content: "It will be in Rails 4.0 likely"
t.posts.create! content: "That's good to know!"

t = Topic.create! name: "Security and Mass Assignment", sticky: false
t.posts.create! content: "Make sure to add attr_accessible"

t = Topic.create! name: "Frequently Asked Questions", sticky: true
t.posts.create! content: "This is a sticky topic"

User.create! email: "petrero@gmail.com", password: "secret"
