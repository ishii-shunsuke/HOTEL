class AddReservationDateToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :reservation_date, :date
    add_column :rooms, :checkout_date, :date
  end
end
