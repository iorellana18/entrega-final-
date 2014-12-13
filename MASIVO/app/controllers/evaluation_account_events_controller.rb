class EvaluationAccountEventsController < ApplicationController
  before_action :set_evaluation_account_event, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_account_events
  # GET /evaluation_account_events.json
  def index
    @evaluation_account_events = EvaluationAccountEvent.all
  end

  # GET /evaluation_account_events/1
  # GET /evaluation_account_events/1.json
  def show
  end

  # GET /evaluation_account_events/new
  def new
    @evaluation_account_event = EvaluationAccountEvent.new
  end

  # GET /evaluation_account_events/1/edit
  def edit
  end

  # POST /evaluation_account_events
  # POST /evaluation_account_events.json
  def create
    @evaluation_account_event = EvaluationAccountEvent.new(evaluation_account_event_params)

    respond_to do |format|
      if @evaluation_account_event.save
        format.html { redirect_to @evaluation_account_event, notice: 'Evaluation account event was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_account_event }
      else
        format.html { render :new }
        format.json { render json: @evaluation_account_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_account_events/1
  # PATCH/PUT /evaluation_account_events/1.json
  def update
    respond_to do |format|
      if @evaluation_account_event.update(evaluation_account_event_params)
        format.html { redirect_to @evaluation_account_event, notice: 'Evaluation account event was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_account_event }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_account_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_account_events/1
  # DELETE /evaluation_account_events/1.json
  def destroy
    @evaluation_account_event.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_account_events_url, notice: 'Evaluation account event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_account_event
      @evaluation_account_event = EvaluationAccountEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_account_event_params
      params.require(:evaluation_account_event).permit(:num_followers_start, :num_followers_end, :evaluation_id)
    end
end
