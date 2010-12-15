require 'test_helper'

class SkeletonsControllerTest < ActionController::TestCase
  setup do
    @skeleton = skeletons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skeletons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skeleton" do
    assert_difference('Skeleton.count') do
      post :create, :skeleton => @skeleton.attributes
    end

    assert_redirected_to skeleton_path(assigns(:skeleton))
  end

  test "should show skeleton" do
    get :show, :id => @skeleton.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skeleton.to_param
    assert_response :success
  end

  test "should update skeleton" do
    put :update, :id => @skeleton.to_param, :skeleton => @skeleton.attributes
    assert_redirected_to skeleton_path(assigns(:skeleton))
  end

  test "should destroy skeleton" do
    assert_difference('Skeleton.count', -1) do
      delete :destroy, :id => @skeleton.to_param
    end

    assert_redirected_to skeletons_path
  end
end
