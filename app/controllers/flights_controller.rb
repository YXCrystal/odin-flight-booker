class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.map {|a| a.code}
        @flight_options = Flight.all.map {|f| f.start.strftime("%d %b %Y")}
        @order_flights = @flight_options.sort.uniq
        @flight = Flight.new
    end
end
