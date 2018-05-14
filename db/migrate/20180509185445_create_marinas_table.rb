class CreateMarinasTable < ActiveRecord::Migration[5.2]
  def change
    create_table :marinas do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.integer :max_boat_size, null: false
      t.text :accomidations, limit: 1..500
      t.boolean :public_restroom, null: false, default: false
      t.boolean :gas_dock, null: false, default: false
      t.boolean :public_launch, null: false, default: false
    end
  end
end
