# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
  username: "pokonski",
  full_name: "Piotrek Okonski",
  twitter_name: "pokonski",
  avatar_image_name: "pokonski.png",
  url: "http://gorailsgo.com/",
  bio: <<-BIO
I produce (http://gorailsgo.com) - Ruby on Rails Applications. I also work on the following projects.

* [Public Activity](http://github.com/pokonski/public_activity)
* [Activity Blog](http://github.com/pokonski/activity_blog)
* [Bootstrap Modal Builder](http://github.com/pokonski/bootstrap-modal-builder/)

Be sure to check out my [GitHub page](https://github.com/pokonski) for more projects.
BIO
)

User.create(username: "MrMystery")
