module FlightsHelper
    def airport(airport_id)
        Airport.find_by(id: airport_id).code
    end
end
