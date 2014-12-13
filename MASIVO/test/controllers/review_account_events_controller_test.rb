require 'test_helper'

class ReviewAccountEventsControllerTest < ActionController::TestCase
  setup do
    @review_account_event = review_account_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_account_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_account_event" do
    assert_difference('ReviewAccountEvent.count') do
      post :create, review_account_event: { num_followers_end_review: @review_account_event.num_followers_end_review, num_followers_start_review: @review_account_event.num_followers_start_review, review_event_id: @review_account_event.review_event_id }
    end

    assert_redirected_to review_account_event_path(assigns(:review_account_event))
  end

  test "should show review_account_event" do
    get :show, id: @review_account_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_account_event
    assert_response :success
  end

  test "should update review_account_event" do
    patch :update, id: @review_account_event, review_account_event: { num_followers_end_review: @review_account_event.num_followers_end_review, num_followers_start_review: @review_account_event.num_followers_start_review, review_event_id: @review_account_event.review_event_id }
    assert_redirected_to review_account_event_path(assigns(:review_account_event))
  end

  test "should destroy review_account_event" do
    assert_difference('ReviewAccountEvent.count', -1) do
      delete :destroy, id: @review_account_event
    end

    assert_redirected_to review_account_events_path
  end
end
