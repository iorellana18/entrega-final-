require 'test_helper'

class DataAccountEventsControllerTest < ActionController::TestCase
  setup do
    @data_account_event = data_account_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_account_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_account_event" do
    assert_difference('DataAccountEvent.count') do
      post :create, data_account_event: { account_id: @data_account_event.account_id, account_official: @data_account_event.account_official, date_creation_account: @data_account_event.date_creation_account, location: @data_account_event.location, num_followers: @data_account_event.num_followers, num_following: @data_account_event.num_following, num_photo_and_video: @data_account_event.num_photo_and_video, num_tweets: @data_account_event.num_tweets, url_official: @data_account_event.url_official, url_twitter_event: @data_account_event.url_twitter_event }
    end

    assert_redirected_to data_account_event_path(assigns(:data_account_event))
  end

  test "should show data_account_event" do
    get :show, id: @data_account_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_account_event
    assert_response :success
  end

  test "should update data_account_event" do
    patch :update, id: @data_account_event, data_account_event: { account_id: @data_account_event.account_id, account_official: @data_account_event.account_official, date_creation_account: @data_account_event.date_creation_account, location: @data_account_event.location, num_followers: @data_account_event.num_followers, num_following: @data_account_event.num_following, num_photo_and_video: @data_account_event.num_photo_and_video, num_tweets: @data_account_event.num_tweets, url_official: @data_account_event.url_official, url_twitter_event: @data_account_event.url_twitter_event }
    assert_redirected_to data_account_event_path(assigns(:data_account_event))
  end

  test "should destroy data_account_event" do
    assert_difference('DataAccountEvent.count', -1) do
      delete :destroy, id: @data_account_event
    end

    assert_redirected_to data_account_events_path
  end
end
