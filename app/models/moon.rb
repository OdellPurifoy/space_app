# frozen_string_literal: true

class Moon < ApplicationRecord
  belongs_to :planet
  validates :moon_name, :moon_surface_type, presence: true
  validates :moon_surface_temperature, numericality: true
end
