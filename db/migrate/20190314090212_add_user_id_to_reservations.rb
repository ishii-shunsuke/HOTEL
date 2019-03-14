class AddUserIdToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :user_id, :integer
    add_column :reservations, :plan_id, :integer
  end
end
