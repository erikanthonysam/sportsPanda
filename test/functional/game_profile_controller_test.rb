require 'test_helper'

class GameProfileControllerTest < ActionController::TestCase
  test "should get bar_results" do
    get :bar_results
    assert_response :success
  end

end
