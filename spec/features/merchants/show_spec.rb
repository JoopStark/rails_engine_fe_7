require "rails_helper"

feature "displays merchant" do
  it "lists merchants" do
    visit "/merchants/1"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Item Nemo Facere")
  end
end