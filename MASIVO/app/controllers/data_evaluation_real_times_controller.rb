class DataEvaluationRealTimesController < ApplicationController
  before_action :set_data_evaluation_real_time, only: [:show, :edit, :update, :destroy]

  # GET /data_evaluation_real_times
  # GET /data_evaluation_real_times.json
  def index
    @data_evaluation_real_times = DataEvaluationRealTime.all
  end

  # GET /data_evaluation_real_times/1
  # GET /data_evaluation_real_times/1.json
  def show
  end

  # GET /data_evaluation_real_times/new
  def new
    @data_evaluation_real_time = DataEvaluationRealTime.new
  end

  # GET /data_evaluation_real_times/1/edit
  def edit
  end

  # POST /data_evaluation_real_times
  # POST /data_evaluation_real_times.json
  def create
    @data_evaluation_real_time = DataEvaluationRealTime.new(data_evaluation_real_time_params)

    respond_to do |format|
      if @data_evaluation_real_time.save
        format.html { redirect_to @data_evaluation_real_time, notice: 'Data evaluation real time was successfully created.' }
        format.json { render :show, status: :created, location: @data_evaluation_real_time }
      else
        format.html { render :new }
        format.json { render json: @data_evaluation_real_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_evaluation_real_times/1
  # PATCH/PUT /data_evaluation_real_times/1.json
  def update
    respond_to do |format|
      if @data_evaluation_real_time.update(data_evaluation_real_time_params)
        format.html { redirect_to @data_evaluation_real_time, notice: 'Data evaluation real time was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_evaluation_real_time }
      else
        format.html { render :edit }
        format.json { render json: @data_evaluation_real_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_evaluation_real_times/1
  # DELETE /data_evaluation_real_times/1.json
  def destroy
    @data_evaluation_real_time.destroy
    respond_to do |format|
      format.html { redirect_to data_evaluation_real_times_url, notice: 'Data evaluation real time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_evaluation_real_time
      @data_evaluation_real_time = DataEvaluationRealTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_evaluation_real_time_params
      params.require(:data_evaluation_real_time).permit(:evaluation_id)
    end
end
