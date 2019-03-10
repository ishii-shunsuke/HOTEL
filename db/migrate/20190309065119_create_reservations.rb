class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
    	t.integer :reservation_date
    	t.integer :arrival_time

      t.timestamps
    end
  end
end
