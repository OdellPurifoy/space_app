# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Moon, type: :model do
  it 'validates presence of moon name' do
    record = Moon.new
    record.moon_name = ''
    record.validate
    expect(record.errors[:moon_name]).to include("can't be blank")

    record.moon_name = 'Europa'
    record.validate
    expect(record.errors[:moon_name]).to_not include("can't be blank")
  end

  it 'validates presence of moon surface type' do
    record = Moon.new
    record.moon_surface_type = ''
    record.validate
    expect(record.errors[:moon_surface_type]).to include("can't be blank")

    record.moon_surface_type = 'Gas'
    record.validate
    expect(record.errors[:moon_surface_type]).to_not include("can't be blank")
  end

  it 'validates surface temperature is a number' do
    record = Moon.new
    record.moon_surface_temperature = 'number'
    record.validate
    expect(record.errors[:moon_surface_temperature]).to include('is not a number')

    record.moon_surface_temperature = 1000
    record.validate
    expect(record.errors[:moon_surface_temperature]).to_not include('is not a number')
  end
end
