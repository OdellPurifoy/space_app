require 'rails_helper'

RSpec.describe "planets/new", type: :view do
  before(:each) do
    assign(:planet, Planet.new(
      planet_name: "MyString",
      planet_type: "MyString",
      surface_temperature: "9.99",
      core_type: "MyString"
    ))
  end

  it "renders new planet form" do
    render

    assert_select "form[action=?][method=?]", planets_path, "post" do

      assert_select "input[name=?]", "planet[planet_name]"

      assert_select "input[name=?]", "planet[planet_type]"

      assert_select "input[name=?]", "planet[surface_temperature]"

      assert_select "input[name=?]", "planet[core_type]"
    end
  end
end
