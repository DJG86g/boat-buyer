class CreateBoatingLocation < ActiveRecord::Migration[5.2]
  def change
    create_table :boating_locations do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.point :lat_long
      t.boolean :gas_dock, null: false, default: false
      t.boolean :public_restroom, null: false, default: false
      t.boolean :public_launch, null: false, default: false
      t.belongs_to :user
    end
  end
end
