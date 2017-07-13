require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    
    todo_title = "Buy Milk"
    create_todo todo_title 

    click_on "Mark Complete"
    click_on "Mark Incomplete"

    expect(page).not_to display_completed_todo  todo_title
    expect(page).to display_todo todo_title


  end

end
