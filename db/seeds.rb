# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin_email = 'admin@nusredcross.com'

admin = User.find_by_email(admin_email) || User.create!({:email => 'admin@nusredcross.com',
                                                         :password => 'password',
                                                         :password_confirmation => 'password'})

