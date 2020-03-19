class FlightsController < ApplicationController
    def index
        @flight = Flight.new
        @booking = Booking.new 
        
        airport_options = Airport.all.map {|a| a.code}
        @unique_airport = airport_options.uniq

        flight_options = Flight.all.map{|f| f.start.strftime("%d %b %Y")}
        @order_flights = flight_options.sort.uniq

        if params[:flight]
            @to_airport = Airport.find_by(code: params[:flight][:to_airport_id])
            @from_airport = Airport.find_by(code: params[:flight][:from_airport_id])
        
            if params[:flight][:start] == "Any Date"
                @flights = Flight.all.where(to_airport_id: @to_airport.id, from_airport_id: @from_airport.id)
            else 
                @flights = Flight.all.where(to_airport_id: @to_airport.id, from_airport_id: @from_airport.id, start: params[:flight][:start])
            end
        
        end
        
        
    end

    def create
        
    end
end
