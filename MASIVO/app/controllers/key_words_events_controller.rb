class KeyWordsEventsController < ApplicationController
  before_action :set_key_words_event, only: [:show, :edit, :update, :destroy]

  # GET /key_words_events
  # GET /key_words_events.json
  def index
    @key_words_events = KeyWordsEvent.all
  end

  # GET /key_words_events/1
  # GET /key_words_events/1.json
  def show
  end

  # GET /key_words_events/new
  def new
    @key_words_event = KeyWordsEvent.new
  end

  # GET /key_words_events/1/edit
  def edit
  end

  # POST /key_words_events
  # POST /key_words_events.json
  def create
    @key_words_event = KeyWordsEvent.new(key_words_event_params)

    respond_to do |format|
      if @key_words_event.save
        format.html { redirect_to @key_words_event, notice: 'Key words event was successfully created.' }
        format.json { render :show, status: :created, location: @key_words_event }
      else
        format.html { render :new }
        format.json { render json: @key_words_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_words_events/1
  # PATCH/PUT /key_words_events/1.json
  def update
    respond_to do |format|
      if @key_words_event.update(key_words_event_params)
        format.html { redirect_to @key_words_event, notice: 'Key words event was successfully updated.' }
        format.json { render :show, status: :ok, location: @key_words_event }
      else
        format.html { render :edit }
        format.json { render json: @key_words_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_words_events/1
  # DELETE /key_words_events/1.json
  def destroy
    @key_words_event.destroy
    respond_to do |format|
      format.html { redirect_to key_words_events_url, notice: 'Key words event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_words_event
      @key_words_event = KeyWordsEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_words_event_params
      params.require(:key_words_event).permit(:palabra, :event_id)
    end
end
