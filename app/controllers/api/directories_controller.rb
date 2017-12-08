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
    test_for_hash(params['directory_info']['directory']))
    
    @directory = Directory.new(directory_params)
    
    if @directory.save 
      render json: @directory
    else 
      render json: @directory.errors.full_messages, status: 422
    end 
  end 
  
  def update 
    test_for_hash(params['directory_info']['directory']))
    
    @directory = Directory.find_by(id: params[:id])
    debugger
    
    if !@directory.nil?
      if @directory.update_attributes(directory_params) 
        render json: @directory
      else
        render json: @directory.errors.full_messages, status: 422
      end
    else
      render json: {errors: ["Not Found"]}, status: 404
    end
    
  end 
  
  def destroy
  end 
  
  private 
  
  def test_for_hash(hash)
    if eval(hash.is_a?(Hash))
      render json: {errors: ["Not a hash directory"]}, status: 404
    end  
  end 
  
  def directory_params
    params.require(:directory_info).permit(:name, :directory)
  end
end
