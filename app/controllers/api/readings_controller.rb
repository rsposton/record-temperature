module Api
  class ReadingsController < Api::BaseController

      private

        def reading_params
          params.require(:reading).permit(:location, :temperature, :recorded_at)
        end

        def query_params
          params.permit(:location)
        end

  end
end
