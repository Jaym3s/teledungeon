class CallController < ApplicationController
  def start

    phoneml = {:phoneml => [:speak => {"$" => "Welcome weary traveler. You stand in front of a large opening in the side of a mountain.", "@voice" => "allison"}, 
               :input => {"$" => "#{request.url}call/dungeon_master","@options" => "0,dungeon,enter,forward,run,flee"},]}

    render :json => phoneml.to_json
  end

  def dungeon_master

  end
end
