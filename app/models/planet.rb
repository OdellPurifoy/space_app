# frozen_string_literal: true

class Planet < ApplicationRecord
  has_many :moons, dependent: :destroy
  has_one_attached :cover_image
  has_many_attached :images
  validates :planet_name, :planet_type, presence: true
  validates :surface_temperature, numericality: true
end
