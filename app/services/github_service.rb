class GithubService
  def self.find_user(token)
    Faraday.get("https://api.github.com/user?access_token=#{token}")
  end
end
