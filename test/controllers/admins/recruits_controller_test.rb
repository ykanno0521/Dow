require 'test_helper'

class Admins::RecruitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_recruits_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_recruits_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_recruits_destroy_url
    assert_response :success
  end

end
