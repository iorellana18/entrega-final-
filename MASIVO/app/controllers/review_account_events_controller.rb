class ReviewAccountEventsController < ApplicationController
  before_action :set_review_account_event, only: [:show, :edit, :update, :destroy]

  # GET /review_account_events
  # GET /review_account_events.json
  def index
    @review_account_events = ReviewAccountEvent.all
  end

  # GET /review_account_events/1
  # GET /review_account_events/1.json
  def show
  end

  # GET /review_account_events/new
  def new
    @review_account_event = ReviewAccountEvent.new
  end

  # GET /review_account_events/1/edit
  def edit
  end

  # POST /review_account_events
  # POST /review_account_events.json
  def create
    @review_account_event = ReviewAccountEvent.new(review_account_event_params)

    respond_to do |format|
      if @review_account_event.save
        format.html { redirect_to @review_account_event, notice: 'Review account event was successfully created.' }
        format.json { render :show, status: :created, location: @review_account_event }
      else
        format.html { render :new }
        format.json { render json: @review_account_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_account_events/1
  # PATCH/PUT /review_account_events/1.json
  def update
    respond_to do |format|
      if @review_account_event.update(review_account_event_params)
        format.html { redirect_to @review_account_event, notice: 'Review account event was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_account_event }
      else
        format.html { render :edit }
        format.json { render json: @review_account_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_account_events/1
  # DELETE /review_account_events/1.json
  def destroy
    @review_account_event.destroy
    respond_to do |format|
      format.html { redirect_to review_account_events_url, notice: 'Review account event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_account_event
      @review_account_event = ReviewAccountEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_account_event_params
      params.require(:review_account_event).permit(:num_followers_start_review, :num_followers_end_review, :review_event_id)
    end
end
