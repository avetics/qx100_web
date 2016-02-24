require 'test_helper'

class CamerasControllerTest < ActionController::TestCase
  test "should get zoom_in" do
    get :zoom_in
    assert_response :success
  end

end
