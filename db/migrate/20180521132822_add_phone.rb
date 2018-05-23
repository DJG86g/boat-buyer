class AddPhone < ActiveRecord::Migration[5.2]
  def change
    add_column :marinas, :phone_number, :string, null: false, default: "555-555-5555"
  end
end
