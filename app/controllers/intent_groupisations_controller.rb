class IntentGroupisationsController < ApplicationController



  skip_before_action :verify_authenticity_token
  #config.web_console.whitelisted_ips = '10.10.0.2'


  wrap_parameters format: [:json]

  respond_to :json


  def index
    @auctions = IntentGroupisation.all
  end

  def create

    @query = IntentGroupisation.new(query_params)

    respond_to do | format |
      if @query.save
        format.json {render json: @query, status: :created}

      else
        format.json {render json: @query, status: :unprocessable_entity }

      end
    end
  end

  def show
    #@query = QueryGroupisation.find_by intent: params[:intent]
    @query= IntentGroupisation.where("intent like ?", params[:intent]).select("link").distinct

    respond_to do |format|
      format.json {render json: @query}
    end
  end



  def query_params
    #params.permit(:link, :intent)
    params.required(:query_groupisation).permit(:link, :intent)

  end



end