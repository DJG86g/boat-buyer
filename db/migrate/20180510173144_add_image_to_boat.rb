class AddImageToBoat < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :boat_photo, :string
  end
end
