class BookingsController < ApplicationController
    def new
        @flight = Flight.find_by(id: params[:flight_id])
        @seats = params[:seats].to_i
        @booking = Booking.new
        @seats.times { @booking.passengers.build }
    end

    def create
        @flight = Flight.find_by(id: params[:flight_id])
        @booking = Booking.create(booking_params)
        if @booking.save 
            redirect_to flight_booking_path(@flight.id, @booking.id)
        else 
            flash.now[:error] = "Unable to book. Please try again"
            render 'new'
        end
    end

    def show
        @flight = Flight.find_by(id: params[:flight_id])
        @booking = Booking.find_by(id: params[:id])
        @passengers = @booking.passengers
    end 

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end

end
