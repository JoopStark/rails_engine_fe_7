require "rails_helper"

feature "displays all merchants" do
  it "lists merchants" do
    visit merchants_path

    expect(page).to have_link("Schroeder-Jerde")
  end

  it "lists merchants" do
    visit merchants_path

    click_link "Schroeder-Jerde"

    expect(page).to have_current_path("/merchants/1")
  end
end