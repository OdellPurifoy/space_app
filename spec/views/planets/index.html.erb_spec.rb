require 'rails_helper'

RSpec.describe "planets/index", type: :view do
  before(:each) do
    assign(:planets, [
      Planet.create!(
        planet_name: "Planet Name",
        planet_type: "Planet Type",
        surface_temperature: "9.99",
        core_type: "Core Type"
      ),
      Planet.create!(
        planet_name: "Planet Name",
        planet_type: "Planet Type",
        surface_temperature: "9.99",
        core_type: "Core Type"
      )
    ])
  end

  it "renders a list of planets" do
    render
    assert_select "tr>td", text: "Planet Name".to_s, count: 2
    assert_select "tr>td", text: "Planet Type".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Core Type".to_s, count: 2
  end
end
