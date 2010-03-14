class CallController < ApplicationController
  def create
    
    phoneml = {:phoneml => [:speak => {"$" => params[:callerinput]}]}
    
    params
    
    render :json => phoneml.to_json
  end
end
