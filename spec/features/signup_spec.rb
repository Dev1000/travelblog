require 'rails_helper'

feature 'As a visitor I want to create an account' do

  scenario 'with valid information' do
    visit '/'
    click_link 'Sign up'
    expect(current_path).to eq(new_user_registration_path)

    fill_in 'Email', with: 'eduardo@test.com'
    fill_in 'Password', with: 'test'
    fill_in 'Password confirmation', with: 'test'
    click_button 'Sign up'

    expect(current_path).to eq '/'
    expect(page).to have_link 'Log out'
    expect(page).to have_content 'Thanks for use our Travel Blog'
  end

end