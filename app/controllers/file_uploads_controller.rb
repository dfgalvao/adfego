class FileUploadsController < ApplicationController
  def new
    @preach = Preach.find(params[:preach_id])
  end
  
  def create
    @preach = Preach.find(params[:preach_id])
    @preach.files.attach(params[:preach_id][:files])
    redirect_to preaches_path(@preach)
  end

  def destroy
    @preach = Preach.find(params[:preach_id])
    @preach.files.find(params[:id]).purge
    redirect_to preaches_path(@preach)
  end
end