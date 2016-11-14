FactoryGirl.define do
  factory :attendees do
    first_name 'Bill'
    last_name 'Murray'
    title 'Badass'
    organization 'Awesome, LLC'
    DOB { 67.years.ago }
  end
end
