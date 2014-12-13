require 'test_helper'

class DataEvaluationRealTimesControllerTest < ActionController::TestCase
  setup do
    @data_evaluation_real_time = data_evaluation_real_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_evaluation_real_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_evaluation_real_time" do
    assert_difference('DataEvaluationRealTime.count') do
      post :create, data_evaluation_real_time: { evaluation_id: @data_evaluation_real_time.evaluation_id }
    end

    assert_redirected_to data_evaluation_real_time_path(assigns(:data_evaluation_real_time))
  end

  test "should show data_evaluation_real_time" do
    get :show, id: @data_evaluation_real_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_evaluation_real_time
    assert_response :success
  end

  test "should update data_evaluation_real_time" do
    patch :update, id: @data_evaluation_real_time, data_evaluation_real_time: { evaluation_id: @data_evaluation_real_time.evaluation_id }
    assert_redirected_to data_evaluation_real_time_path(assigns(:data_evaluation_real_time))
  end

  test "should destroy data_evaluation_real_time" do
    assert_difference('DataEvaluationRealTime.count', -1) do
      delete :destroy, id: @data_evaluation_real_time
    end

    assert_redirected_to data_evaluation_real_times_path
  end
end
