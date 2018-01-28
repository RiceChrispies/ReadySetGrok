# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["Math", "Science", "Literature", "Language"].each do |cat|
	@category.find_or_create_by name: cat
end

#["Coursera", "edX", "Kahn Acaademy", "Skillshare", "General Assembly", "DuoLingo", "Codeacademy", "W3Schools"].each do |site|
#	site.find_or_create_by_name(site)
#end

#["Chemistry", "Biology", "Physics", "Algebra", "Calculus", "Statistics", "German", "Swedish", "French"].each do |subject|
#	subjectName.find_or_create_by_name(subject)
#end