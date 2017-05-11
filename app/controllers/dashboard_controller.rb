class DashboardController < ApplicationController
   def index
    @github_user = GithubUser.new(current_user)
  end
end
