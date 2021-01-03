require 'rails_helper'

RSpec.describe "moons/index", type: :view do
  before(:each) do
    assign(:moons, [
      Moon.create!(
        moon_name: "Moon Name",
        moon_surface_type: "Moon Surface Type",
        moon_surface_temperature: "9.99",
        planet: nil
      ),
      Moon.create!(
        moon_name: "Moon Name",
        moon_surface_type: "Moon Surface Type",
        moon_surface_temperature: "9.99",
        planet: nil
      )
    ])
  end

  it "renders a list of moons" do
    render
    assert_select "tr>td", text: "Moon Name".to_s, count: 2
    assert_select "tr>td", text: "Moon Surface Type".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
