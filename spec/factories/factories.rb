FactoryGirl.define do
  factory :attendees do
    first_name 'Bill'
    last_name 'Murray'
    title 'Badass'
    organization 'Awesome, LLC'
    DOB { 67.years.ago }
  end
end

# attendee = FactoryGirl.create(:attendee)

# attendee = build(:attendee)
# attendee = create(:attendee)
# attrs = attributes_for(:attendee)
# stub = build_stubbed(:attendee)

# create(:attendee) do |attendee|
#   attendee.posts.create(attributes_for(:attendee))
# end
