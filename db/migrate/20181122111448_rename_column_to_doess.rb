class RenameColumnToDoess < ActiveRecord::Migration[5.2]
  def change
  	rename_column :doses, :details, :description
  end
end
