class Api::DirectoriesController < ApplicationController
  def index 
    @directories = Directory.all 
    
    # @parsed_directories = @directories.map { |dir| {dir.name => dir.directory} }
    # 
    render json: @directories
  end 
  
  def show 
    @directory = Directory.find_by(id: params[:id])
    
    # @parsed_dir = eval(directory.directory)
    
    render json: @directory
  end 
  
  def create 
    #How does the route accept information 
    #How to make sure that the information is a hash
    # #And make sure that the information is returned correctly. 
    debugger
    @directory = Directory.new(directory_params)

    if @directory.save 
      render json: @directory
    else 
      render json: @directory.errors.full_messages, status: 422
    end 
  end 
  
  def update 
    
    @directory = Directory.find_by(id: params[:id])
    
  end 
  
  def destroy 
    
    
  end 
  
  private 
  
  def directory_params
    params.require(:directory_info).permit(:name, :directory)
  end
end
