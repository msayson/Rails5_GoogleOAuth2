require 'rails_helper'
# Feature: 'About' page
#   As a visitor
#   I want to visit an 'about' page
#   So I can learn more about the website
feature 'About page' do
  # Scenario: Visit the 'about' page
  #   Given I am a visitor
  #   When I visit the 'about' page
  #   Then I see a description of the application
  #   and can find a link to its source code.
  scenario 'Visit the about page' do
    description = 'users can keep notes on personal connections'
    source_code_link = 'You can find the source code for Connections at ' \
                       'https://github.com/msayson/connections.'
    visit 'about'
    expect(page).to have_content description
    expect(page).to have_content source_code_link
  end
end
