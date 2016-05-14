# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 r = Role.create({name: "Admin"})


u=User.create(first_name: "Admin", last_name: "Admin", email: "admin@yopmail.com", username: "Admin", password: "adminuser10", active: true)

b=Blog_List.create(name: "Myblog", active:true)
u.roles<<r