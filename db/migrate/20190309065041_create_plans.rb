class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.string :plan_description
      t.string :plan_image_id
      t.integer :price

      t.timestamps
    end
  end
end
