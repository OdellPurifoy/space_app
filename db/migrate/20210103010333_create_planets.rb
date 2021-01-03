# frozen_string_literal: true

class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :planet_name, null: false, default: ''
      t.string :planet_type, null: false, default: ''
      t.decimal :surface_temperature
      t.string :core_type

      t.timestamps
    end
  end
end
