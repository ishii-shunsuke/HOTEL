class Room < ApplicationRecord

   has_many :reservations
   belongs_to :room_type
   belongs_to :plan

   def sum_of_price
    price * room_count
   end
end
