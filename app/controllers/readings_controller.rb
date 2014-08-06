class ReadingsController < ApplicationController
  def index
    @readings = Reading.all
  end

  def show
    @reading = Reading.find(params[:id])
  end

  def new
    @reading = Reading.new({:recorded_at => Time.now})
  end

  def create
    @reading = Reading.new(reading_params)
    @reading.save ? redirect_to(:action => 'index') : render('new')
  end


  def delete
    @reading = Reading.find(params[:id])
  end

  def destroy
    reading = Reading.find(params[:id]).destroy
    flash[:notice] = "Reading ID '#{reading.id}' deleted."
    redirect_to(:action => 'index')
  end


  private
    def reading_params
      params.require(:reading).permit(:location,:temperature,:recorded_at)
    end
end
