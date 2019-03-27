class AddPersonToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :person, :integer
    add_column :rooms, :room_count, :integer
  end
end
