require 'test_helper'

class DataTweetReviewsControllerTest < ActionController::TestCase
  setup do
    @data_tweet_review = data_tweet_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_tweet_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_tweet_review" do
    assert_difference('DataTweetReview.count') do
      post :create, data_tweet_review: { city_tweet: @data_tweet_review.city_tweet, comuna_tweet: @data_tweet_review.comuna_tweet, geo: @data_tweet_review.geo, geo_cord: @data_tweet_review.geo_cord, sensitivity_rank: @data_tweet_review.sensitivity_rank, state: @data_tweet_review.state, tweet_id: @data_tweet_review.tweet_id }
    end

    assert_redirected_to data_tweet_review_path(assigns(:data_tweet_review))
  end

  test "should show data_tweet_review" do
    get :show, id: @data_tweet_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_tweet_review
    assert_response :success
  end

  test "should update data_tweet_review" do
    patch :update, id: @data_tweet_review, data_tweet_review: { city_tweet: @data_tweet_review.city_tweet, comuna_tweet: @data_tweet_review.comuna_tweet, geo: @data_tweet_review.geo, geo_cord: @data_tweet_review.geo_cord, sensitivity_rank: @data_tweet_review.sensitivity_rank, state: @data_tweet_review.state, tweet_id: @data_tweet_review.tweet_id }
    assert_redirected_to data_tweet_review_path(assigns(:data_tweet_review))
  end

  test "should destroy data_tweet_review" do
    assert_difference('DataTweetReview.count', -1) do
      delete :destroy, id: @data_tweet_review
    end

    assert_redirected_to data_tweet_reviews_path
  end
end
