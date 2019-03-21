class AddRoomTypeIdToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :room_type_id, :integer
  end
end
