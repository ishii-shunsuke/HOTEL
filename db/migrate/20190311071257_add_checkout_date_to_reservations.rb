class AddCheckoutDateToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :checkout_date, :integer
  end
end
