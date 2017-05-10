require 'rails_helper'

describe GithubUser do
  context ".find github user(github_user_token)" do
    it "returns github user that matches ." do
      VCR.use_cassette("github_user") do
        
        token = ENV["github_user_token"]
    
        github_user = GithubUser.find_by(token)
      
        expect(github_user.name).to eq("Sergey")
        expect(github_user.login).to eq("lukyans")
      end
    end
  end
end
