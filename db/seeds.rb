# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Role.create([{name: "Admin"}, {name: "user"}])

u  = User.create(first_name: "Rakesh", last_name: "Doppalapudi", email:"rakeshc.d86@gmail.com", username:"rakeshc1610", password:"amaresh10", active:true)
u  = User.create(first_name: "Amaresh", last_name: "Doppalapudi", email:"amaresh0110@gmail.com", username:"amaresh10", password:"amaresh12", active:true)

u.roles.create(name: "Admin", :user => User.where(user_id: 2))

#roles_users.create(name: "Admin", user_id: 1)
#roles_users.create(:user_id, :role_id)
