require 'rails_helper'

RSpec.describe "moons/show", type: :view do
  before(:each) do
    @moon = assign(:moon, Moon.create!(
      moon_name: "Moon Name",
      moon_surface_type: "Moon Surface Type",
      moon_surface_temperature: "9.99",
      planet: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Moon Name/)
    expect(rendered).to match(/Moon Surface Type/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
