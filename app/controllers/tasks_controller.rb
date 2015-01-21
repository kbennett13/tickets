class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end
  
  def create
    @task = Task.new(task_params)
    
    if @task.save
      redirect_to @task
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  private
    def task_params
      params.require(:task).permit(:id, :name, :subtask, :parent_id, :recurring)
    end
end
