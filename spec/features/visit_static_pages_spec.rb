require 'rails_helper'

feature 'Visit static pages' do
  scenario 'visit' do
    visit '/'
    expect(page).to have_link('About', href: '/static_pages/about')

  end
end