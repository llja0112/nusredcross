# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

superadmin_email = 'anthony@nusredcross.com'
admin_email = 'admin@nusredcross.com'

superadmin_rights = Role.find_or_create_by!({:name => 'superadmin'})
admin_rights = Role.find_or_create_by!({:name => 'admin'})
member_rights = Role.find_or_create_by!({:name => 'member'})

superadmin = User.find_by_email(admin_email) || User.create!({
                                                         :email => 'anthony@nusredcross.com',
                                                         :password => 'password',
                                                         :password_confirmation => 'password'    
})

superadmin.roles = [superadmin_rights]

admin = User.find_by_email(admin_email) || User.create!({:email => 'admin@nusredcross.com',
                                                         :password => 'password',
                                                         :password_confirmation => 'password'    
})
admin.roles = [admin_rights]

