class AddRoomTypeIdToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :room_type_id, :integer
  end
end
