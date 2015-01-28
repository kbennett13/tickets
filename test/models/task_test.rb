require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "all tasks have names" do
    task = Task.new(:subtask => false)
    assert_not task.save, "Tasks must have names"
  end

  test "non-subtasks do not have parent tasks" do
    task = Task.new(:subtask => false)
    assert_equal task.parent_id, nil, "Non-subtasks do not have parent tasks"
  end

  test "subtasks have parent tasks" do
    task = Task.new(:subtask => true)
    assert_not task.save, "Subtasks must have parent tasks"
  end

  test "non-recurring tasks have due dates" do
    task = Task.new(:name => "Task", :recurring => false, :due_date => nil)
    assert_not task.save
  end

  test "non-recurring tasks that do not run forever have end dates" do
    task = Task.new(:name => "Task", :recurring => false, :forever => false, :end_date => nil)
    assert_not task.save
  end

  test "non-recurring tasks that run forever do not have end dates" do
    task = Task.new(:name => "Task", :recurring => false, :forever => true, :end_date => Date.today + 1.day)
    assert_not task.save
  end
end
