class BookingsController < ApplicationController
    def new
        @flight = Flight.find_by(id: params[:flight_id])
        @booking = Booking.new
        @passenger = @booking.passengers.build
    end

    def create
        @flight = Flight.find_by(id: params[:flight_id])
        @booking = Booking.create(booking_params)
        if @booking.save 
            redirect_to flight_booking_path(@flight.id, @booking.id)
        else 
            render 'new'
        end
    end

    def show
        @flight = Flight.find_by(id: params[:flight_id])
        @booking = Booking.find_by(id: params[:id])
        @passenger = Passenger.find_by(booking_id: @booking.id)
    end 

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end

end
