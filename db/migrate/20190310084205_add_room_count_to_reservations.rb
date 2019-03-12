class AddRoomCountToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :room_count, :integer
  end
end
