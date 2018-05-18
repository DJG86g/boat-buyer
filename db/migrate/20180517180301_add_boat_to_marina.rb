class AddBoatToMarina < ActiveRecord::Migration[5.2]
  def change
    add_reference :marinas, :boat, index: true
  end
end
