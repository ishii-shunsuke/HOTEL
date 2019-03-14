class AddPlanIdToRoomTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :room_types, :plan_id, :integer
  end
end
