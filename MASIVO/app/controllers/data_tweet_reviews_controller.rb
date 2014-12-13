class DataTweetReviewsController < ApplicationController
  before_action :set_data_tweet_review, only: [:show, :edit, :update, :destroy]

  # GET /data_tweet_reviews
  # GET /data_tweet_reviews.json
  def index
    @data_tweet_reviews = DataTweetReview.all
  end

  # GET /data_tweet_reviews/1
  # GET /data_tweet_reviews/1.json
  def show
  end

  # GET /data_tweet_reviews/new
  def new
    @data_tweet_review = DataTweetReview.new
  end

  # GET /data_tweet_reviews/1/edit
  def edit
  end

  # POST /data_tweet_reviews
  # POST /data_tweet_reviews.json
  def create
    @data_tweet_review = DataTweetReview.new(data_tweet_review_params)

    respond_to do |format|
      if @data_tweet_review.save
        format.html { redirect_to @data_tweet_review, notice: 'Data tweet review was successfully created.' }
        format.json { render :show, status: :created, location: @data_tweet_review }
      else
        format.html { render :new }
        format.json { render json: @data_tweet_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_tweet_reviews/1
  # PATCH/PUT /data_tweet_reviews/1.json
  def update
    respond_to do |format|
      if @data_tweet_review.update(data_tweet_review_params)
        format.html { redirect_to @data_tweet_review, notice: 'Data tweet review was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_tweet_review }
      else
        format.html { render :edit }
        format.json { render json: @data_tweet_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_tweet_reviews/1
  # DELETE /data_tweet_reviews/1.json
  def destroy
    @data_tweet_review.destroy
    respond_to do |format|
      format.html { redirect_to data_tweet_reviews_url, notice: 'Data tweet review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_tweet_review
      @data_tweet_review = DataTweetReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_tweet_review_params
      params.require(:data_tweet_review).permit(:geo, :state, :geo_cord, :city_tweet, :comuna_tweet, :sensitivity_rank, :tweet_id)
    end
end
