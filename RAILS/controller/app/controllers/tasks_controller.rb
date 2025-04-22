class TasksController < ApplicationController
  def index
    @tasks = Task.all

    render json: {tasks: @tasks}
  end

  def show 
    task_id = params[:id]
    @task = Task.find(task_id.to_i)

    render json: {task: @task}
  end
end
