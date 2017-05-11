class DashboardController < ApplicationController
   def index
    @github_user = GithubUser.find_by(current_user.oauth_token)
  end
end
