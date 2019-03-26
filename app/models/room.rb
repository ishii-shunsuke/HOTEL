class Room < ApplicationRecord

   has_many :reservations
   belongs_to :room_type
   belongs_to :plan
end
