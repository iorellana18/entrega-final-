class BatchDeletionsController < ApplicationController
  before_action :set_batch_deletion, only: [:show, :edit, :update, :destroy]

  # GET /batch_deletions
  # GET /batch_deletions.json
  def index
    @batch_deletions = BatchDeletion.all
  end

  # GET /batch_deletions/1
  # GET /batch_deletions/1.json
  def show
  end

  # GET /batch_deletions/new
  def new
    @batch_deletion = BatchDeletion.new
  end

  # GET /batch_deletions/1/edit
  def edit
  end

  # POST /batch_deletions
  # POST /batch_deletions.json
  def create
    @batch_deletion = BatchDeletion.new(batch_deletion_params)

    respond_to do |format|
      if @batch_deletion.save
        format.html { redirect_to @batch_deletion, notice: 'Batch deletion was successfully created.' }
        format.json { render :show, status: :created, location: @batch_deletion }
      else
        format.html { render :new }
        format.json { render json: @batch_deletion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batch_deletions/1
  # PATCH/PUT /batch_deletions/1.json
  def update
    respond_to do |format|
      if @batch_deletion.update(batch_deletion_params)
        format.html { redirect_to @batch_deletion, notice: 'Batch deletion was successfully updated.' }
        format.json { render :show, status: :ok, location: @batch_deletion }
      else
        format.html { render :edit }
        format.json { render json: @batch_deletion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batch_deletions/1
  # DELETE /batch_deletions/1.json
  def destroy
    @batch_deletion.destroy
    respond_to do |format|
      format.html { redirect_to batch_deletions_url, notice: 'Batch deletion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch_deletion
      @batch_deletion = BatchDeletion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batch_deletion_params
      params.require(:batch_deletion).permit(:num_tweets_delete, :date_until_delete_tweets, :num_account_delete, :date_until_delete_account, :num_evaluation_delete, :date_delete_evaluation)
    end
end
