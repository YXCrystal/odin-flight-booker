class BookingsController < ApplicationController
    def new
        @flight = Flight.find_by(id: params[:flight_id])
        @adults = params[:adult]
    end
end
