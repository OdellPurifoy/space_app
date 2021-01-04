# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Planet, type: :model do
  it 'validates presence of planet name' do
    record = Planet.new
    record.planet_name = ''
    record.validate
    expect(record.errors[:planet_name]).to include("can't be blank")

    record.planet_name = 'Mars'
    record.validate
    expect(record.errors[:planet_name]).to_not include("can't be blank")
  end

  it 'validates presence of planet type' do
    record = Planet.new
    record.planet_type = ''
    record.validate
    expect(record.errors[:planet_type]).to include("can't be blank")

    record.planet_type = 'Gas'
    record.validate
    expect(record.errors[:planet_type]).to_not include("can't be blank")
  end

  it 'validates surface temperature is a number' do
    record = Planet.new
    record.surface_temperature = 'number'
    record.validate
    expect(record.errors[:surface_temperature]).to include('is not a number')

    record.surface_temperature = 1000
    record.validate
    expect(record.errors[:surface_temperature]).to_not include('is not a number')
  end
end
