class ImguploadsController < ApplicationController
 def new
    @imgupload = Imgupload.order('created_at DESC')
    @imgupload = Imgupload.new
  end
 
  def create
    @imgupload = Imgupload.new(imgupload_params)
    @imgupload.save
    redirect_to new_imgupload_path
  end
  def show
    @imgupload =Imgupload.find(params[:id])
    
  end
  private
 
  def imgupload_params
    params.require(:imgupload).permit(:image, :title)
  end
end
