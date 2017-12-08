class Api::DirectoriesController < ApplicationController
  def index 
    @directories = Directory.all 
    render json: @directories
  end 
  
  def show 
    @directory = Directory.find_by(id: params[:id])
    render json: @directory
  end 
  
  def create 
    # test_for_hash(params['directory_info']['directory'])
    
    @directory = Directory.new(directory_params)
    
    if @directory.save 
      render json: @directory
    else 
      render json: @directory.errors.full_messages, status: 422
    end 
  end 
  
  def update 
    # test_for_hash(params['directory_info']['directory'])
    
    @directory = Directory.find_by(id: params[:id])

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
  
  # def test_for_hash(hash)
  #   begin
  #     eval(hash)
  #   rescue
  #     render json: {errors: ["Not a hash directory"]}, status: 404
  #   end  
  #   return true
  # end 
  # 
  def directory_params
    params.require(:directory_info).permit(:name, :directory)
  end
end
