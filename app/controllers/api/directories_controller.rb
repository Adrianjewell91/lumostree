class Api::DirectoriesController < ApplicationController
  def index 
  end 
  
  def show 
  end 
  
  def create 
  end 
  
  def update 
  end 
  
  def destroy 
  end 
  
  private 
  
  def directory_params
    params.require(:directory).permit(:name, :directory)
  end
end
