class RoomType < ApplicationRecord

 has_many :rooms
 has_many :plans, through: :rooms
end
