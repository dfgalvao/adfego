require 'test_helper'

class InformativoControllerTest < ActionDispatch::IntegrationTest
  test "should get faq" do
    get informativo_faq_url
    assert_response :success
  end

end
