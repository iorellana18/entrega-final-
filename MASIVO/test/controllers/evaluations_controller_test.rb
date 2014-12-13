require 'test_helper'

class EvaluationsControllerTest < ActionController::TestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post :create, evaluation: { data_evaluation_real_time_id: @evaluation.data_evaluation_real_time_id, date_end_evaluation: @evaluation.date_end_evaluation, date_start_evaluation: @evaluation.date_start_evaluation, evaluation_account_event_id: @evaluation.evaluation_account_event_id, evaluation_real_time: @evaluation.evaluation_real_time, num_mentions: @evaluation.num_mentions, num_mentions_negative: @evaluation.num_mentions_negative, num_mentions_positive: @evaluation.num_mentions_positive, num_user_active: @evaluation.num_user_active, review_event_id: @evaluation.review_event_id }
    end

    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should show evaluation" do
    get :show, id: @evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation
    assert_response :success
  end

  test "should update evaluation" do
    patch :update, id: @evaluation, evaluation: { data_evaluation_real_time_id: @evaluation.data_evaluation_real_time_id, date_end_evaluation: @evaluation.date_end_evaluation, date_start_evaluation: @evaluation.date_start_evaluation, evaluation_account_event_id: @evaluation.evaluation_account_event_id, evaluation_real_time: @evaluation.evaluation_real_time, num_mentions: @evaluation.num_mentions, num_mentions_negative: @evaluation.num_mentions_negative, num_mentions_positive: @evaluation.num_mentions_positive, num_user_active: @evaluation.num_user_active, review_event_id: @evaluation.review_event_id }
    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete :destroy, id: @evaluation
    end

    assert_redirected_to evaluations_path
  end
end
