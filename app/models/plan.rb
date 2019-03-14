class Plan < ApplicationRecord


 attachment :plan_image


 belongs_to :user
 belongs_to :reservation
 has_many :room_types
end
