class ChangeColumnName < ActiveRecord::Migration[5.2]
  def up
    rename_column :marinas, :accomidations, :accommodations
  end
  def down
    rename_column :marinas, :accommodations, :accomidations
  end  
end
