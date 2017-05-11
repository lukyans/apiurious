class GithubUser

  attr_accessor :login, :name

  def self.find_by(token)
    response = GithubService.find_user(token)
    # body = JSON.parse(response.env["body"])
    user = GithubUser.new
    user.login = response['login']
    user.name = response['name']
    user
  end
end
