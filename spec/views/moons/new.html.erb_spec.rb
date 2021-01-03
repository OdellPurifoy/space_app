require 'rails_helper'

RSpec.describe "moons/new", type: :view do
  before(:each) do
    assign(:moon, Moon.new(
      moon_name: "MyString",
      moon_surface_type: "MyString",
      moon_surface_temperature: "9.99",
      planet: nil
    ))
  end

  it "renders new moon form" do
    render

    assert_select "form[action=?][method=?]", moons_path, "post" do

      assert_select "input[name=?]", "moon[moon_name]"

      assert_select "input[name=?]", "moon[moon_surface_type]"

      assert_select "input[name=?]", "moon[moon_surface_temperature]"

      assert_select "input[name=?]", "moon[planet_id]"
    end
  end
end
