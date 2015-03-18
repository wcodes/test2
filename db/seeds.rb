# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "test1", email: "githubcodes@gmail.com", password: "12345678", password_confirmation:"12345678")
User.create(username: "test2", email: "githubcodes2@gmail.com", password: "12345678", password_confirmation:"12345678")
User.create(username: "test3", email: "githubcodes3@gmail.com", password: "12345678", password_confirmation:"12345678")
User.create(username: "test4", email: "githubcodes4@gmail.com", password: "12345678", password_confirmation:"12345678")
User.create(username: "test5", email: "githubcodes5@gmail.com", password: "12345678", password_confirmation:"12345678")
User.create(username: "test6", email: "githubcodes6@gmail.com", password: "12345678", password_confirmation:"12345678")
p "Test users created"
