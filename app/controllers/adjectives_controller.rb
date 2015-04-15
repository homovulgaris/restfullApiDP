class AdjectivesController < ApplicationController

  respond_to :json

  def show
    @adjs= Adjective.where("lemma like ?", params[:lemma])
    respond_to do |format|
      format.json { render json: @adjs }

    end
  end
  def index
    @adjs= Adjective.where("lemma like ?", params[:lemma])
    respond_to do |format|
      format.json { render json: @adjs }
    end
  end

end
