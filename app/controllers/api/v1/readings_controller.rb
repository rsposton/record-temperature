module Api
  module V1
    class ReadingsController < ApplicationController

      respond_to :json

      def index
        respond_with Reading.all
      end

      def create
        @reading = Reading.new(reading_params)
        @reading.save ? redirect_to(:action => 'index') : render('new')
      end

      private
        def reading_params
          params.require(:reading).permit(:location,:temperature,:recorded_at)
        end

    end
  end
end
