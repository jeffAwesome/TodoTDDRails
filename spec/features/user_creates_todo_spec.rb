require "rails_helper"


feature "User creates todo" do
  scenario "successfully" do
    title = "Buy Milk"
    sign_in

    create_todo title

    expect(page).to display_todo title
  end
end
