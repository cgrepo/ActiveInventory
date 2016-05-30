# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Delegation.destroy_all

User.create! [
  { username: "carlos", password: "abc123" },
  { username: "mary", password: "123abc" }
]

Delegation.create! [
	{name:"San Jose del Cabo"},
	{name:"Cabo San Lucas"},
	{name:"Miraflores"},
	{name:"Santiago"},
	{name:"La Rivera"}
]