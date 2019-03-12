class Reservation < ApplicationRecord
　
 attachment :plan_image



 has_many :plans
 has_many :users, through: :plans

end
