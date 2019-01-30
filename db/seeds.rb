# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker' # il faut installer la gem faker pour avoir les valeurs
2.times do |variable|
	course = Course.create!(title: Faker::HowIMetYourMother.quote)
end
10.times do
	student = Student.create!(name: Faker::HowIMetYourMother.character, course_id: Course.order("RANDOM()").first.id) # cette fonction permet de fixer un seul eleve par cours
end