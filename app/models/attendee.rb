class Attendee < ApplicationRecord
  has_and_belongs_to_many :assignments
end
