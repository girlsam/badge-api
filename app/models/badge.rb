class Badge < ApplicationRecord
  belongs_to :attendee 
  belongs_to :assignment
end
