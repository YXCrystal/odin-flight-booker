class Passenger < ApplicationRecord
    has_many :flights
    belongs_to :booking
    
    validates :name, presence: true
    validates :email, presence: true
    
    has_many :booked_flights, through: :bookings, source: :flight 
end
