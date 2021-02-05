require 'test_helper'

class InstitucionalControllerTest < ActionDispatch::IntegrationTest
  test "should get sobre" do
    get institucional_sobre_url
    assert_response :success
  end

end
