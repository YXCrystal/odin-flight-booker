class Passenger < ApplicationRecord
    has_many :flights
    has_many :bookings
    has_many :booked_flights, through: :bookings, source: :flight 
end
