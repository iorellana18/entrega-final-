require 'test_helper'

class KeyWordsEventsControllerTest < ActionController::TestCase
  setup do
    @key_words_event = key_words_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:key_words_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create key_words_event" do
    assert_difference('KeyWordsEvent.count') do
      post :create, key_words_event: { event_id: @key_words_event.event_id, palabra: @key_words_event.palabra }
    end

    assert_redirected_to key_words_event_path(assigns(:key_words_event))
  end

  test "should show key_words_event" do
    get :show, id: @key_words_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @key_words_event
    assert_response :success
  end

  test "should update key_words_event" do
    patch :update, id: @key_words_event, key_words_event: { event_id: @key_words_event.event_id, palabra: @key_words_event.palabra }
    assert_redirected_to key_words_event_path(assigns(:key_words_event))
  end

  test "should destroy key_words_event" do
    assert_difference('KeyWordsEvent.count', -1) do
      delete :destroy, id: @key_words_event
    end

    assert_redirected_to key_words_events_path
  end
end
