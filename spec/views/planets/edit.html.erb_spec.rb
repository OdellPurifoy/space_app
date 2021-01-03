require 'rails_helper'

RSpec.describe "planets/edit", type: :view do
  before(:each) do
    @planet = assign(:planet, Planet.create!(
      planet_name: "MyString",
      planet_type: "MyString",
      surface_temperature: "9.99",
      core_type: "MyString"
    ))
  end

  it "renders the edit planet form" do
    render

    assert_select "form[action=?][method=?]", planet_path(@planet), "post" do

      assert_select "input[name=?]", "planet[planet_name]"

      assert_select "input[name=?]", "planet[planet_type]"

      assert_select "input[name=?]", "planet[surface_temperature]"

      assert_select "input[name=?]", "planet[core_type]"
    end
  end
end
