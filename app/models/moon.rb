# frozen_string_literal: true

class Moon < ApplicationRecord
  belongs_to :planet
  has_one_attached :moon_cover_image
  has_many_attached :moon_images
  validates :moon_name, :moon_surface_type, presence: true
  validates :moon_surface_temperature, numericality: true
end
