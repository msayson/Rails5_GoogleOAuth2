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
    description = 'Rails 5 application which uses Google OAuth2'
    src_code_link = 'You can find the source code for Rails5_GoogleOAuth2 ' \
                    'at https://github.com/msayson/Rails5_GoogleOAuth2.'
    visit 'about'
    expect(page).to have_content description
    expect(page).to have_content src_code_link
  end
end
