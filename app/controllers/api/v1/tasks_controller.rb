class Api::V1::TasksController < ApplicationController

  def index
    tasks = Task.all 
    render json: tasks
  end

  def create 
    task = task.new(task_params)
    if task.save
      render json: task, status: :accepted
    else 
      render json: {errors: task.errors.full_messages}, status: :unprocessable_entity
    end
  end
end


  end

  def task_params 
    params.require(:task).permit(:title, :deadline, :completed, :project_id)
  end

 end
