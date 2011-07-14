require 'test_helper'

class SportsbarsControllerTest < ActionController::TestCase
  setup do
    @sportsbar = sportsbars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sportsbars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sportsbar" do
    assert_difference('Sportsbar.count') do
      post :create, :sportsbar => @sportsbar.attributes
    end

    assert_redirected_to sportsbar_path(assigns(:sportsbar))
  end

  test "should show sportsbar" do
    get :show, :id => @sportsbar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sportsbar.to_param
    assert_response :success
  end

  test "should update sportsbar" do
    put :update, :id => @sportsbar.to_param, :sportsbar => @sportsbar.attributes
    assert_redirected_to sportsbar_path(assigns(:sportsbar))
  end

  test "should destroy sportsbar" do
    assert_difference('Sportsbar.count', -1) do
      delete :destroy, :id => @sportsbar.to_param
    end

    assert_redirected_to sportsbars_path
  end
end
