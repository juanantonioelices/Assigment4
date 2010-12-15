require 'test_helper'

class SubsubtopicValuesControllerTest < ActionController::TestCase
  setup do
    @subsubtopic_value = subsubtopic_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subsubtopic_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subsubtopic_value" do
    assert_difference('SubsubtopicValue.count') do
      post :create, :subsubtopic_value => @subsubtopic_value.attributes
    end

    assert_redirected_to subsubtopic_value_path(assigns(:subsubtopic_value))
  end

  test "should show subsubtopic_value" do
    get :show, :id => @subsubtopic_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subsubtopic_value.to_param
    assert_response :success
  end

  test "should update subsubtopic_value" do
    put :update, :id => @subsubtopic_value.to_param, :subsubtopic_value => @subsubtopic_value.attributes
    assert_redirected_to subsubtopic_value_path(assigns(:subsubtopic_value))
  end

  test "should destroy subsubtopic_value" do
    assert_difference('SubsubtopicValue.count', -1) do
      delete :destroy, :id => @subsubtopic_value.to_param
    end

    assert_redirected_to subsubtopic_values_path
  end
end
