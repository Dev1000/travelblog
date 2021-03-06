require 'rails_helper'

feature 'As a visitor I want to create an account' do

  scenario 'with valid information' do
    visit '/'
    click_link 'Sign up'
    expect(current_path).to eq(new_user_registration_path)

    fill_in 'Email', with: 'eduardo@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up'

    expect(current_path).to eq '/'
    expect(page).to have_content 'A message with a confirmation link has been sent to your email address.'
    expect(page).to have_link 'Sign up'
  end

end