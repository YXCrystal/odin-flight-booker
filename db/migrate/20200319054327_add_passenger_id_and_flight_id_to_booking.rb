class AddPassengerIdAndFlightIdToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :passenger_id, :integer
    add_column :bookings, :flight_id, :integer
  end
end
