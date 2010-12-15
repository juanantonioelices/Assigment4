require 'test_helper'

class TopicValuesControllerTest < ActionController::TestCase
  setup do
    @topic_value = topic_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic_value" do
    assert_difference('TopicValue.count') do
      post :create, :topic_value => @topic_value.attributes
    end

    assert_redirected_to topic_value_path(assigns(:topic_value))
  end

  test "should show topic_value" do
    get :show, :id => @topic_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @topic_value.to_param
    assert_response :success
  end

  test "should update topic_value" do
    put :update, :id => @topic_value.to_param, :topic_value => @topic_value.attributes
    assert_redirected_to topic_value_path(assigns(:topic_value))
  end

  test "should destroy topic_value" do
    assert_difference('TopicValue.count', -1) do
      delete :destroy, :id => @topic_value.to_param
    end

    assert_redirected_to topic_values_path
  end
end
