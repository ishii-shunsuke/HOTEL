require 'test_helper'

class Users::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_rooms_new_url
    assert_response :success
  end

end
