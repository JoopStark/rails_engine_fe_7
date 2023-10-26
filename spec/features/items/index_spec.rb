require "rails_helper"

feature "displays all items" do
  it "lists items" do
    visit items_path

    expect(page).to have_content("blah")
  end
end