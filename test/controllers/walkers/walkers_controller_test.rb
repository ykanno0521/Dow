require 'test_helper'

class Walkers::WalkersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get walkers_walkers_index_url
    assert_response :success
  end

  test "should get show" do
    get walkers_walkers_show_url
    assert_response :success
  end

end
