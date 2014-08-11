class GraphsController < ApplicationController
  def index
    @readings = params[:q].nil? ? Reading.all : Reading.location(params[:q])
  end
end
