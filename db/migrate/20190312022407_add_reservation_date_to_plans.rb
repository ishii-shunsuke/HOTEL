class AddReservationDateToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :reservation_date, :integer
    add_column :plans, :checkout_date, :integer
    add_column :plans, :year, :integer
    add_column :plans, :month, :integer
    add_column :plans, :day, :integer
    add_column :plans, :person, :integer
    add_column :plans, :room_count, :integer
  end
end
