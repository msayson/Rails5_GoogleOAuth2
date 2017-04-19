require 'rails_helper'
# Feature: 'Home' page
#   As a visitor
#   I want to visit a 'home' page
feature 'Home page' do
  # Scenario: Visit the 'home' page
  #   Given I am a visitor
  #   When I visit the 'home' page
  #   Then I see "Welcome to Connections"
  scenario 'Visit the home page' do
    visit ''
    expect(page).to have_content 'Welcome to Connections'
  end
end
