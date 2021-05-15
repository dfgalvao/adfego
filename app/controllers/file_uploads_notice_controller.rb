class FileUploadsNoticeController < ApplicationController
  def new
    @notice = Notice.find(params[:notice_id])
  end

  def create
    @notice = Notice.find(params[:notice_id])
    @notice.image.attach(params[:notice][:image])
    redirect_to notices_path(@notice)
  end
end