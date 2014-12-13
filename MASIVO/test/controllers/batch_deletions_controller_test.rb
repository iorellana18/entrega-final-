require 'test_helper'

class BatchDeletionsControllerTest < ActionController::TestCase
  setup do
    @batch_deletion = batch_deletions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batch_deletions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch_deletion" do
    assert_difference('BatchDeletion.count') do
      post :create, batch_deletion: { date_delete_evaluation: @batch_deletion.date_delete_evaluation, date_until_delete_account: @batch_deletion.date_until_delete_account, date_until_delete_tweets: @batch_deletion.date_until_delete_tweets, num_account_delete: @batch_deletion.num_account_delete, num_evaluation_delete: @batch_deletion.num_evaluation_delete, num_tweets_delete: @batch_deletion.num_tweets_delete }
    end

    assert_redirected_to batch_deletion_path(assigns(:batch_deletion))
  end

  test "should show batch_deletion" do
    get :show, id: @batch_deletion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch_deletion
    assert_response :success
  end

  test "should update batch_deletion" do
    patch :update, id: @batch_deletion, batch_deletion: { date_delete_evaluation: @batch_deletion.date_delete_evaluation, date_until_delete_account: @batch_deletion.date_until_delete_account, date_until_delete_tweets: @batch_deletion.date_until_delete_tweets, num_account_delete: @batch_deletion.num_account_delete, num_evaluation_delete: @batch_deletion.num_evaluation_delete, num_tweets_delete: @batch_deletion.num_tweets_delete }
    assert_redirected_to batch_deletion_path(assigns(:batch_deletion))
  end

  test "should destroy batch_deletion" do
    assert_difference('BatchDeletion.count', -1) do
      delete :destroy, id: @batch_deletion
    end

    assert_redirected_to batch_deletions_path
  end
end
