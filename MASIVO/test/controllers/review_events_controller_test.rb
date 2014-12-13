require 'test_helper'

class ReviewEventsControllerTest < ActionController::TestCase
  setup do
    @review_event = review_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_event" do
    assert_difference('ReviewEvent.count') do
      post :create, review_event: { ending_date_review: @review_event.ending_date_review, event_id: @review_event.event_id, num_active_users: @review_event.num_active_users, num_mentions_negative_sum: @review_event.num_mentions_negative_sum, num_mentions_positive_sum: @review_event.num_mentions_positive_sum, num_of_mentions: @review_event.num_of_mentions, passing_rate: @review_event.passing_rate, review_account_event_id: @review_event.review_account_event_id, start_date_review: @review_event.start_date_review }
    end

    assert_redirected_to review_event_path(assigns(:review_event))
  end

  test "should show review_event" do
    get :show, id: @review_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_event
    assert_response :success
  end

  test "should update review_event" do
    patch :update, id: @review_event, review_event: { ending_date_review: @review_event.ending_date_review, event_id: @review_event.event_id, num_active_users: @review_event.num_active_users, num_mentions_negative_sum: @review_event.num_mentions_negative_sum, num_mentions_positive_sum: @review_event.num_mentions_positive_sum, num_of_mentions: @review_event.num_of_mentions, passing_rate: @review_event.passing_rate, review_account_event_id: @review_event.review_account_event_id, start_date_review: @review_event.start_date_review }
    assert_redirected_to review_event_path(assigns(:review_event))
  end

  test "should destroy review_event" do
    assert_difference('ReviewEvent.count', -1) do
      delete :destroy, id: @review_event
    end

    assert_redirected_to review_events_path
  end
end
