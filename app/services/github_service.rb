class GithubService
  def self.find_user(token)
    response = Faraday.get("https://api.github.com/user?access_token=#{token}")
    JSON.parse(response.body)
  end
end
