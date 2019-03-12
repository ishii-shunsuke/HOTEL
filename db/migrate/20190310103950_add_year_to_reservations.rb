class AddYearToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :year, :integer
    add_column :reservations, :month, :integer
    add_column :reservations, :day, :integer
  end
end
