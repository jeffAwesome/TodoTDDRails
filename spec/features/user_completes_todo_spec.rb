require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    
    todo_title = "Buy Milk"
    create_todo todo_title 
    click_on "Mark Complete"

    expect(page).to display_completed_todo  todo_title

  end

end
