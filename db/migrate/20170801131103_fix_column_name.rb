class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :done, :name
    change_column :tasks, :name, :string
  end
end
