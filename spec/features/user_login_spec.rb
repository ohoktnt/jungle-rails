require 'rails_helper'

RSpec.feature "Visitors can login", type: :feature, js:true do
  # SETUP
  before :each do
    @user = User.create!(
      first_name: 'Tammy', 
      last_name: 'Tran', 
      email: 'tammy@email.com', 
      password: '123456', 
      password_confirmation: '123456'
    )
  end

  scenario "user logs in and is taken to homepage" do
    # goes to home page
    visit root_path
    save_screenshot 'test5a.png'
    expect(page).to have_content('Login')

    # clicks on Login button, wait for load, verify page
    click_link("Login")
    sleep(1)
    save_screenshot 'test5b.png'
    expect(page).to have_current_path(new_session_path)

    # fill in form with credentials, wait for load, verify sucessful login
    fill_in 'email', with: 'tammy@email.com'
    fill_in 'password', with: '123456'
    click_button 'Login'
    sleep(1)
    save_screenshot 'test5c.png'
    expect(page).to have_content('Logout')
    expect(page).to have_current_path(root_path)

  end

end
