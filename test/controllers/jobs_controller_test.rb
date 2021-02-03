require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "should get jobs" do
    get jobs_jobs_url
    assert_response :success
  end

end
