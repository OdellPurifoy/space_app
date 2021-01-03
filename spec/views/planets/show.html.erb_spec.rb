require 'rails_helper'

RSpec.describe "planets/show", type: :view do
  before(:each) do
    @planet = assign(:planet, Planet.create!(
      planet_name: "Planet Name",
      planet_type: "Planet Type",
      surface_temperature: "9.99",
      core_type: "Core Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Planet Name/)
    expect(rendered).to match(/Planet Type/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Core Type/)
  end
end
