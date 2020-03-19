# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airport_code = ["YYC", "YQX", "YHZ", "YUL", "YQB", "YQR", "YYZ", "YVR", "YWG"]

airport_code.each do |code|
    Airport.create(code: code)
end

flights = [
    [1, 9, "11/04/2020 5:00 AM", "08:00"],
    [1, 8, "08/04/2020 8:00 AM", "05:00"],
    [2, 7, "09/04/2020 9:00 AM", "03:00"],
    [2, 6, "10/04/2020 5:00 AM", "03:30"],
    [3, 5, "01/04/2020 6:00 AM", "05:30"],
    [3, 4, "03/04/2020 4:00 AM", "02:15"],
    [4, 3, "03/04/2020 3:00 AM", "03:00"],
    [4, 8, "07/04/2020 8:00 AM", "05:00"],
    [5, 9, "01/04/2020 9:00 AM", "03:00"],
    [5, 7, "10/04/2020 10:00 AM", "07:00"],
    [6, 4, "08/04/2020 5:00 AM", "03:30"],
    [6, 3, "09/04/2020 6:00 AM", "05:30"],
    [7, 2, "09/04/2020 5:00 AM", "02:15"],
    [7, 1, "06/04/2020 8:00 AM", "03:00"],
    [8, 4, "06/04/2020 10:00 AM", "02:15"],
    [8, 6, "13/04/2020 3:00 AM", "03:00"],
    [9, 3, "12/04/2020 3:00 AM", "08:00"],
    [9, 8, "10/04/2020 7:00 AM", "05:00"],
    [1, 5, "08/04/2020 10:00 AM", "03:00"],
    [2, 3, "04/04/2020 5:00 AM", "08:00"],
    [3, 8, "04/04/2020 8:00 AM", "05:00"],
    [4, 9, "06/04/2020 9:00 AM", "03:00"]
]

flights.each do |to, from, start, duration|
    Flight.create(to_airport_id: to, from_airport_id: from, start: start, duration: duration)
end