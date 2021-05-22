class FileUploadsNoticeController < ApplicationController
  def new
    @notice = Notice.find(params[:notice_id])
  end

  def create
    @notice = Notice.find(params[:notice_id])
    @notice.files.attach(params[:notice][:files])
    redirect_to notices_path(@notice)
  end

  def destroy
    @notice = Notice.find(params[:notice_id])
    @notice.files.find(params[:id]).purge
    redirect_to notices_path(@notice)
  end
end