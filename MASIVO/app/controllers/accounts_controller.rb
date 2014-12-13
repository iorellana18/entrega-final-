class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.where("type_account = ? OR type_account = ?",1,2)
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new 
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)
      
    if @account.type_account != 0

    dae = DataAccountEvent.new
    
        client = Twitter::REST::Client.new do |config|
            config.consumer_key       = 'xYEFttTg61yWfZO20byljihWF'
            config.consumer_secret    = 'DLdNpRAgcxsqdODqJP1yTSE7p02T3hSUDF1qMbz14QrVp5jKLO'
            config.oauth_token        = '93945943-Pd4V1IuroSUUU4GsdzUvprQ0or0ZRAajUt8DMPgIb'
            config.oauth_token_secret = 'GZWtSu5QEXmUJUb0ZTEjfdg262DxxX03IljeeCl5PtvhZ'
        end

        p = @account.user_twitter.delete "@"
        c = client.user(p)

        @account.key_user_id = c.id
        @account.user_name = c.name
        @account.save

        dae.id = nil
        dae.url_official = c.website.to_s
        dae.location = c.location
        dae.url_twitter_event = "https://twitter.com/"+p
        dae.num_tweets = c.statuses_count 
        dae.num_photo_and_video = 0
        dae.num_following = c.friends_count
        dae.num_followers = c.followers_count 
        
      if @account.type_account == 1
        dae.account_official = true
      end

        dae.date_creation_account = c.created_at
        dae.account_id = @account.id
        dae.save
        @account.data_account_event_id = dae.id
        
        respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end 

    end

  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
     def data_account_event_params
      params.require(:data_account_event).permit(:location, :url_twitter_event, :url_official, :num_tweets, :num_photo_and_video, :num_following, :num_followers, :account_official, :date_creation_account, :account_id)
    end

    def account_params
      params.require(:account).permit(:key_user_id, :user_twitter, :user_name, :type_account, :data_account_event_id)
    end
end
