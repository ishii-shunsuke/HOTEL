class Room < ApplicationRecord


   belongs_to :room_type
   belongs_to :plan
end
