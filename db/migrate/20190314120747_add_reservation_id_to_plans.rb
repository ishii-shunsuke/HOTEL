class AddReservationIdToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :reservation_id, :integer
  end
end
