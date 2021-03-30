# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all
Activity.destroy_all
Weather.destroy_all


jacob = User.create(username: "jacob")
eby = User.create(username: "ebyan")

burke = Location.create(zip: 22015, city: "Burke", user_id: eby.id)
elpaso = Location.create(zip: 79924, city: "El Paso", user_id: jacob.id)


sunday = Weather.create(description: "Sunny", temperature: 70, location_id: burke.id)
monday = Weather.create(description: "Cloudy", temperature: 60, location_id: burke.id)
tuesday = Weather.create(description: "Rain", temperature: 68, location_id: burke.id)
wednesday = Weather.create(description: "Sunny", temperature: 70, location_id: burke.id)
thursday = Weather.create(description: "Sunny", temperature: 70, location_id: burke.id)
friday = Weather.create(description: "Snow", temperature: 30, location_id: burke.id)
saturday = Weather.create(description: "Sunny", temperature: 70, location_id: burke.id)


rollerskating = Activity.create(name: "Roller Skating", user_id: eby.id, location_id: burke.id)


