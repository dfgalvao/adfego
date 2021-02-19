require 'test_helper'

class DoarControllerTest < ActionDispatch::IntegrationTest
  test "should get doe" do
    get doar_doe_url
    assert_response :success
  end

end
