class ChangeNameFormatTasks < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :name, :string
  end
end
