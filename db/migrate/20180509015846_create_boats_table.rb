class CreateBoatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.string :year, null: false
      t.string :hours, null: false
      t.string :engine_size, null: false
      t.string :number_of_engines, null: false
      t.string :length_of_boat, null: false
      t.string :hull_style
      t.belongs_to :user
    end
  end
end
