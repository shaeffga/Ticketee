# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.destroy_all

puts "Destroyed existion information"

# Create Sites
puts ""
puts "Creating Projects...."

bitch_status = Project.create name: "Bitch Status", description: 'this is a description'
puts "Created Site #{bitch_status.name}"