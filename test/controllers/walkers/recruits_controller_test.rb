require 'test_helper'

class Walkers::RecruitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get walkers_recruits_index_url
    assert_response :success
  end

  test "should get show" do
    get walkers_recruits_show_url
    assert_response :success
  end

  test "should get reaction" do
    get walkers_recruits_reaction_url
    assert_response :success
  end

end
