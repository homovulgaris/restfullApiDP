class NounsController < ApplicationController

include ActionController::RespondWith
include ActionController::MimeResponds
include ActionController::ImplicitRender

respond_to :json

  def show
    #$('h3 a[href="'+url+'"]')
    @nouns=Noun.where("lemma like ? or plu like ?", params[:lemma], params[:lemma])    
    respond_to do |format|
       format.json { render js: @nouns.to_json }

    end
  end
  def index
    #@nouns=Noun.where(:conditions => ['lemma rlike ? ', '^'+params[:lemma]+'[a-z].*'],:limit => 10)

    @nouns=Noun.where("lemma like ? or plu like ?", params[:lemma], params[:lemma])
    respond_to do |format|
      format.json { render json: @nouns.to_json }

    end
  end


#
# def show
#   @nouns=Noun.take
#   respond_to do |format|
#     format.json { render json: @nouns }
#
#   end
# end
# def index
#   @nouns=Noun.take
#   respond_to do |format|
#     format.json { render json: @nouns }
#
#   end
# end
#
#
#

end
