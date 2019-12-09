require 'test_helper'

class Admins::ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_review_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_review_show_url
    assert_response :success
  end

  test "should get destory" do
    get admins_review_destory_url
    assert_response :success
  end

end
