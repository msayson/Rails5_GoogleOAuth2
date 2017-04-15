module Omniauth
  # Mock info for authentication
  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:google_oauth2] = {
        'provider' => 'google_oauth2',
        'uid' => '123545',
        'user_info' => { 'name' => 'mockuser' },
        'credentials' => {
          'token' => 'mock_token',
          'secret' => 'mock_secret'
        }
      }
    end
  end

  # Helper functions for authentication
  module SessionHelpers
    def signin
      visit root_path
      expect(page).to have_content('Sign in')
      auth_mock
      click_link 'Sign in'
    end
  end
end
