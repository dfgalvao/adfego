require 'test_helper'

class PreachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preach = preaches(:one)
  end

  test "should get index" do
    get preaches_url
    assert_response :success
  end

  test "should get new" do
    get new_preach_url
    assert_response :success
  end

  test "should create preach" do
    assert_difference('Preach.count') do
      post preaches_url, params: { preach: { publication: @preach.publication, status: @preach.status, subject: @preach.subject, title: @preach.title } }
    end

    assert_redirected_to preach_url(Preach.last)
  end

  test "should show preach" do
    get preach_url(@preach)
    assert_response :success
  end

  test "should get edit" do
    get edit_preach_url(@preach)
    assert_response :success
  end

  test "should update preach" do
    patch preach_url(@preach), params: { preach: { publication: @preach.publication, status: @preach.status, subject: @preach.subject, title: @preach.title } }
    assert_redirected_to preach_url(@preach)
  end

  test "should destroy preach" do
    assert_difference('Preach.count', -1) do
      delete preach_url(@preach)
    end

    assert_redirected_to preaches_url
  end
end
