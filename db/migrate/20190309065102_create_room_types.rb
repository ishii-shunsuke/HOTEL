class CreateRoomTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :room_types do |t|
      t.string :room_type_name
      t.string :room_type_description
      t.string :room_type_image_id

      t.timestamps
    end
  end
end
