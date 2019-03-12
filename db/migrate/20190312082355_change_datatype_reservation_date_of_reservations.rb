class ChangeDatatypeReservationDateOfReservations < ActiveRecord::Migration[5.2]
  def change
  	change_column :reservations, :reservation_date, :date
  	change_column :reservations, :checkout_date, :date
  end
end
