class Plan < ApplicationRecord


 attachment :plan_image


 has_many :rooms
 has_many :room_types, through: :rooms
end
