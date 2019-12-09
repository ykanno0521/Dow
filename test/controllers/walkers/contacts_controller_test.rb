require 'test_helper'

class Walkers::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get walkers_contacts_new_url
    assert_response :success
  end

  test "should get create" do
    get walkers_contacts_create_url
    assert_response :success
  end

end
