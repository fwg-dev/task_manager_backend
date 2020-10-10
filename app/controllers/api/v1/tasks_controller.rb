class Api::V1::TasksController < ApplicationController

  def index
    tasks = Task.all 
    # render json: tasks
    render json: TaskSerializer.new(tasks)

    # options = {
    #   # inlcude associated project
    #   include: [:project]
    # }
    # to add a relationship in serializer
    # render json: ProjectSerializer.new(tasks, options)

  end

  def create 
    task = Task.new(task_params)
    # byebug
    if task.save
      render json: TaskSerializer.new(task), status: :accepted
      # render json: task, status: :accepted

    else 
      render json: {errors: task.errors.full_messages}, status: :unprocessable_entity
    end
  end 

private
  def task_params 
    params.require(:task).permit(:title, :deadline, :creator, :completed, :project_id)
  end

end
