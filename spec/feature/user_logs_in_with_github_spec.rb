require 'rails_helper'

RSpec.feature 'User can log in with Github' do
  context 'An existing user has valid credentials' do

    before do
      Capybara.app = Apicurious::Application
      stub_oauth
    end

    def stub_oauth
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({provider: 'github', uid: '1234', info: {nickname: 'student', name: 'John', image: 'url'}, credentials: {token: 'lasagna'}})
    end

    scenario 'The user clicks login on root path' do
      visit '/'

      expect(page.status_code).to eq 200

      visit github_login_url

      expect(page).to have_current_path('/')
      expect(page.body).to have_content 'Hello, student'
      expect(page.body).to have_link 'Logout'
    end
  end
end