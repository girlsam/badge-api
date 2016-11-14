require 'faker'

Attendees.destroy_all
Assignments.destroy_all

attendee1 = Attendees.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  image: Faker::Placeholdit.image("50x50"),
  DOB: Faker::Date.between(50.years.ago, 20.years.ago),
  organization: Faker::Company.name,
  title: Faker::Name.title
)

assignment1 = Assignments.create!(
  zone_a: Faker::Boolean.boolean,
  zone_b: Faker::Boolean.boolean,
  zone_c: Faker::Boolean.boolean,
  zone_d: Faker::Boolean.boolean,
  zone_1: Faker::Boolean.boolean,
  zone_2: Faker::Boolean.boolean
)

attendee2 = Attendees.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  image: Faker::Placeholdit.image("50x50"),
  DOB: Faker::Date.between(50.years.ago, 20.years.ago),
  organization: Faker::Company.name,
  title: Faker::Name.title
)

assignment2 = Assignments.create!(
  zone_a: Faker::Boolean.boolean,
  zone_b: Faker::Boolean.boolean,
  zone_c: Faker::Boolean.boolean,
  zone_d: Faker::Boolean.boolean,
  zone_1: Faker::Boolean.boolean,
  zone_2: Faker::Boolean.boolean
)

puts attendee1.assignments << assignment1
puts attendee2.assignments << assignment2

# attendee1.badge = badge1
