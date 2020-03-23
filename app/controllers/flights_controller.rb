class FlightsController < ApplicationController
    before_action :setup, only: [:index]
    def index
        @flight = Flight.new
        @booking = Booking.new 

        if params[:flight]
            @flight_info = params[:flight]
            @seats = @flight_info[:booking][:seats]

            @to_airport = Airport.find_by(code: @flight_info[:to_airport_id])
            @from_airport = Airport.find_by(code: @flight_info[:from_airport_id])
        
            if @flight_info[:start] == "Any Date"
                @flights = Flight.all.where(to_airport_id: @to_airport.id, from_airport_id: @from_airport.id)
            else 
                @flights = Flight.all.where(to_airport_id: @to_airport.id, from_airport_id: @from_airport.id, start: @flight_info[:start])
            end
        
        end
        
        
    end

    def create
        
    end

    private 

    def setup
        airport_options = Airport.all.map {|a| a.code}
        @unique_airport = airport_options.uniq

        flight_options = Flight.all.map{|f| f.start.strftime("%d %b %Y")}
        @order_flights = flight_options.sort.uniq
    end
end
