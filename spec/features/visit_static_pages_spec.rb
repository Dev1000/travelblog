require 'rails_helper'

feature 'Visit static pages' do
  scenario 'visit' do
    visit '/'
    expect(page).to have_link('About', href: '/static_pages/about')
    click_link 'About'
    expect(page).to have_link('Home', href: '/')
    click_link 'Home'
    expect(page).to have_link('Contact', href: '/static_pages/contact')
    click_link 'Contact'
    expect(page).to have_link 'Home', href: '/'
    click_link 'Home'
    expect(page).to have_css 'h1', text: 'Welcome to our Travel Blog!'
    click_link 'Log in'
    expect(current_path).to eq(new_user_session_path)
  end
end