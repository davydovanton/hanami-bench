require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get api" do
    get :api
    assert_response :success
  end

  test "should get web" do
    get :web
    assert_response :success
  end

end
