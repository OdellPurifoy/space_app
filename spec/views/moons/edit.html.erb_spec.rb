require 'rails_helper'

RSpec.describe "moons/edit", type: :view do
  before(:each) do
    @moon = assign(:moon, Moon.create!(
      moon_name: "MyString",
      moon_surface_type: "MyString",
      moon_surface_temperature: "9.99",
      planet: nil
    ))
  end

  it "renders the edit moon form" do
    render

    assert_select "form[action=?][method=?]", moon_path(@moon), "post" do

      assert_select "input[name=?]", "moon[moon_name]"

      assert_select "input[name=?]", "moon[moon_surface_type]"

      assert_select "input[name=?]", "moon[moon_surface_temperature]"

      assert_select "input[name=?]", "moon[planet_id]"
    end
  end
end
