require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get venues" do
    get :venues
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
