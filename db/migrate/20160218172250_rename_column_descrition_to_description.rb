class RenameColumnDescritionToDescription < ActiveRecord::Migration
  def change
    rename_column :doses, :descrition , :description
  end
end
