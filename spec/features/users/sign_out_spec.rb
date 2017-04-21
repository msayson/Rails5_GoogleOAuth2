require 'rails_helper'
# Feature: Sign out
#   As a user
#   I want to sign out
#   So I can protect my account from unauthorized access
feature 'Sign out', :omniauth do
  # Scenario: User signs out successfully
  #   Given I am signed in
  #   When I sign out
  #   Then I see a signed out message
  scenario 'user signs out successfully' do
    signin
    click_link 'Sign out'
    expect(page).to have_content 'Signed out'
  end

  # Scenario: User signs out from a non-root page
  #   Given I am signed in and on a non-root page
  #   When I sign out
  #   Then I am redirected to the root page
  scenario 'should redirect to root page' do
    signin
    click_link 'About'
    expect(page).to have_current_path(about_path)
    click_link 'Sign out'
    expect(page).to have_current_path(root_path)
  end
end
