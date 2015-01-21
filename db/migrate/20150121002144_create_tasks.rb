class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :subtask        # is it a subtask?
      t.integer :parent_id      # if it is a subtask, what is the parent?
      t.integer :display_order  # display order for subtasks
      t.boolean :recurring      # does it repeat?
      t.datetime :due_date      # if it does not repeat, when is it due?
      t.boolean :forever        # does it repeat forever?
      t.date :end_date          # if it does not repeat forever, when does it stop?

      t.timestamps
    end
  end
end
