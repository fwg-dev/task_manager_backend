class Api::V1::ProjectsController < ApplicationController
  
  def index
    categories = Category.all
    # render json: categories
    render json: CategorySerializer.new(projects)
  end
  
end
