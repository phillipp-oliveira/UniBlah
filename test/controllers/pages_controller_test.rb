require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get home_url
    assert_response :success
  end

  test "should get explore" do
    get explore_url
    assert_response :success
  end

end
