class AddPersonToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :person, :integer
  end
end
