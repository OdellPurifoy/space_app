# frozen_string_literal: true

class Planet < ApplicationRecord
  has_many :moons, dependent: :destroy
  validates :planet_name, :planet_type, presence: true
  validates :surface_temperature, numericality: true
end
