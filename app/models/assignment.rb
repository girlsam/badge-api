class Assignment < ApplicationRecord
  has_and_belongs_to_many :attendees
end
