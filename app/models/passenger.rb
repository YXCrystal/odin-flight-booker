class Passenger < ApplicationRecord
    has_many :flights
    belongs_to :booking
    
    has_many :booked_flights, through: :bookings, source: :flight 
end
