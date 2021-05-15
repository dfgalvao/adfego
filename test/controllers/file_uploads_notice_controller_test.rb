require 'test_helper'

class FileUploadsNoticeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get file_uploads_notice_new_url
    assert_response :success
  end

end
