require 'test_helper'

class SubtopicValuesControllerTest < ActionController::TestCase
  setup do
    @subtopic_value = subtopic_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subtopic_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtopic_value" do
    assert_difference('SubtopicValue.count') do
      post :create, :subtopic_value => @subtopic_value.attributes
    end

    assert_redirected_to subtopic_value_path(assigns(:subtopic_value))
  end

  test "should show subtopic_value" do
    get :show, :id => @subtopic_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subtopic_value.to_param
    assert_response :success
  end

  test "should update subtopic_value" do
    put :update, :id => @subtopic_value.to_param, :subtopic_value => @subtopic_value.attributes
    assert_redirected_to subtopic_value_path(assigns(:subtopic_value))
  end

  test "should destroy subtopic_value" do
    assert_difference('SubtopicValue.count', -1) do
      delete :destroy, :id => @subtopic_value.to_param
    end

    assert_redirected_to subtopic_values_path
  end
end
