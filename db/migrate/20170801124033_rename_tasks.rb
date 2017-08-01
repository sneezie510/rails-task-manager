class RenameTasks < ActiveRecord::Migration[5.0]
  def change
    rename_table :task_managers, :tasks
  end
end
