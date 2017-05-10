class GithubUser

  attr_accessor :login, :name

  def self.find_by(token)
    response = GithubService.find_user(token)
    body = JSON.parse(response.env["body"])
    user = GithubUser.new
    user.login = body['login']
    user.name = body['name']
    user
  end
end
