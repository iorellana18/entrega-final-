require 'test_helper'

class EvaluationAccountEventsControllerTest < ActionController::TestCase
  setup do
    @evaluation_account_event = evaluation_account_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_account_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_account_event" do
    assert_difference('EvaluationAccountEvent.count') do
      post :create, evaluation_account_event: { evaluation_id: @evaluation_account_event.evaluation_id, num_followers_end: @evaluation_account_event.num_followers_end, num_followers_start: @evaluation_account_event.num_followers_start }
    end

    assert_redirected_to evaluation_account_event_path(assigns(:evaluation_account_event))
  end

  test "should show evaluation_account_event" do
    get :show, id: @evaluation_account_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_account_event
    assert_response :success
  end

  test "should update evaluation_account_event" do
    patch :update, id: @evaluation_account_event, evaluation_account_event: { evaluation_id: @evaluation_account_event.evaluation_id, num_followers_end: @evaluation_account_event.num_followers_end, num_followers_start: @evaluation_account_event.num_followers_start }
    assert_redirected_to evaluation_account_event_path(assigns(:evaluation_account_event))
  end

  test "should destroy evaluation_account_event" do
    assert_difference('EvaluationAccountEvent.count', -1) do
      delete :destroy, id: @evaluation_account_event
    end

    assert_redirected_to evaluation_account_events_path
  end
end
