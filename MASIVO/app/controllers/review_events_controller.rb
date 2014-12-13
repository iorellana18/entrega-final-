class ReviewEventsController < ApplicationController
  before_action :set_review_event, only: [:show, :edit, :update, :destroy]

  # GET /review_events
  # GET /review_events.json
  def index
    @review_events = ReviewEvent.all
  end

  # GET /review_events/1
  # GET /review_events/1.json
  def show
  end

  # GET /review_events/new
  def new
    @review_event = ReviewEvent.new
  end

  # GET /review_events/1/edit
  def edit
  end

  # POST /review_events
  # POST /review_events.json
  def create
    @review_event = ReviewEvent.new(review_event_params)

    respond_to do |format|
      if @review_event.save
        format.html { redirect_to @review_event, notice: 'Review event was successfully created.' }
        format.json { render :show, status: :created, location: @review_event }
      else
        format.html { render :new }
        format.json { render json: @review_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_events/1
  # PATCH/PUT /review_events/1.json
  def update
    respond_to do |format|
      if @review_event.update(review_event_params)
        format.html { redirect_to @review_event, notice: 'Review event was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_event }
      else
        format.html { render :edit }
        format.json { render json: @review_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_events/1
  # DELETE /review_events/1.json
  def destroy
    @review_event.destroy
    respond_to do |format|
      format.html { redirect_to review_events_url, notice: 'Review event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_event
      @review_event = ReviewEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_event_params
      params.require(:review_event).permit(:start_date_review, :ending_date_review, :num_of_mentions, :num_active_users, :passing_rate, :num_mentions_positive_sum, :num_mentions_negative_sum, :event_id, :review_account_event_id)
    end
end
