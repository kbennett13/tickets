class AddOptionsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :fun, :boolean
    add_column :tasks, :personal, :boolean
  end
end
