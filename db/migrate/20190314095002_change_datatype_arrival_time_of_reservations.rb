class ChangeDatatypeArrivalTimeOfReservations < ActiveRecord::Migration[5.2]
	def change
		change_column :reservations, :arrival_time, :time
	end
end
