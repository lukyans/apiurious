require 'rails_helper'

describe GithubService do
  context ".find_by(token)" do
    it "returns a github_user" do 
      VCR.use_cassette("github_service_find_by") do

        token = ENV["github_user_token"]
        github_user = GithubService.find_user(token)
    
        # expect(github_user.count).to be_eq(30)
        expect(github_user).to be_a(Hash)
        expect(github_user).to have_key("name")
        expect(github_user).to have_key("id")
        expect(github_user).to have_key("avatar_url")
        expect(github_user["name"]).to be_a(String)
        expect(github_user["id"]).to be_a(Integer)
        expect(github_user["avatar_url"]).to be_a(String)
      end
    end
  end  
end
#we are not checking for specific value cause API is changing