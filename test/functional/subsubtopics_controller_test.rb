require 'test_helper'

class SubsubtopicsControllerTest < ActionController::TestCase
  setup do
    @subsubtopic = subsubtopics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subsubtopics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subsubtopic" do
    assert_difference('Subsubtopic.count') do
      post :create, :subsubtopic => @subsubtopic.attributes
    end

    assert_redirected_to subsubtopic_path(assigns(:subsubtopic))
  end

  test "should show subsubtopic" do
    get :show, :id => @subsubtopic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subsubtopic.to_param
    assert_response :success
  end

  test "should update subsubtopic" do
    put :update, :id => @subsubtopic.to_param, :subsubtopic => @subsubtopic.attributes
    assert_redirected_to subsubtopic_path(assigns(:subsubtopic))
  end

  test "should destroy subsubtopic" do
    assert_difference('Subsubtopic.count', -1) do
      delete :destroy, :id => @subsubtopic.to_param
    end

    assert_redirected_to subsubtopics_path
  end
end
