# frozen_string_literal: true

require 'faker'

10.times do
  planet_name = Faker::Space.planet
  moon_name = Faker::Space.moon

  planet = Planet.create!(
    planet_name: planet_name,
    planet_type: 'Gas Giant',
    surface_temperature: 100,
    core_type: 'Iron'
  )

  planet.moons.build(
    moon_name: moon_name,
    moon_surface_type: 'Rocky',
    moon_surface_temperature: 20
  ).save
end
