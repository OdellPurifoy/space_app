# frozen_string_literal: true

class CreateMoons < ActiveRecord::Migration[6.0]
  def change
    create_table :moons do |t|
      t.string :moon_name, null: false, default: ''
      t.string :moon_surface_type, null: false, default: ''
      t.decimal :moon_surface_temperature
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
