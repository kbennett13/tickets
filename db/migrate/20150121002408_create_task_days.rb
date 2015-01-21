class CreateTaskDays < ActiveRecord::Migration
  def change
    create_table :task_days do |t|
      t.boolean :sunday
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      
      t.references :task, index: true

      t.timestamps
    end
  end
end
