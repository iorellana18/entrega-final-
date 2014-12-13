class DataAccountEventsController < ApplicationController
  before_action :set_data_account_event, only: [:show, :edit, :update, :destroy]

  # GET /data_account_events
  # GET /data_account_events.json
  def index
    @data_account_events = DataAccountEvent.all
  end

  # GET /data_account_events/1
  # GET /data_account_events/1.json
  def show
  end

  # GET /data_account_events/new
  def new
    @data_account_event = DataAccountEvent.new
  end

  # GET /data_account_events/1/edit
  def edit
  end

  # POST /data_account_events
  # POST /data_account_events.json
  def create
    @data_account_event = DataAccountEvent.new(data_account_event_params)

    respond_to do |format|
      if @data_account_event.save
        format.html { redirect_to @data_account_event, notice: 'Data account event was successfully created.' }
        format.json { render :show, status: :created, location: @data_account_event }
      else
        format.html { render :new }
        format.json { render json: @data_account_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_account_events/1
  # PATCH/PUT /data_account_events/1.json
  def update
    respond_to do |format|
      if @data_account_event.update(data_account_event_params)
        format.html { redirect_to @data_account_event, notice: 'Data account event was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_account_event }
      else
        format.html { render :edit }
        format.json { render json: @data_account_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_account_events/1
  # DELETE /data_account_events/1.json
  def destroy
    @data_account_event.destroy
    respond_to do |format|
      format.html { redirect_to data_account_events_url, notice: 'Data account event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_account_event
      @data_account_event = DataAccountEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_account_event_params
      params.require(:data_account_event).permit(:location, :url_twitter_event, :url_official, :num_tweets, :num_photo_and_video, :num_following, :num_followers, :account_official, :date_creation_account, :account_id)
    end
end
