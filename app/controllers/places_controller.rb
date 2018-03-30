class PlacesController < ApplicationController

  def index
    @places = ["Chicago", "Seoul", "Alaska"]
  end
end
