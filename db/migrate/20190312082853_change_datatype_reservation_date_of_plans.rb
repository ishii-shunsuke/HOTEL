class ChangeDatatypeReservationDateOfPlans < ActiveRecord::Migration[5.2]
  def change
  	change_column :plans, :reservation_date, :date
  	change_column :plans, :checkout_date, :date
  end
end
