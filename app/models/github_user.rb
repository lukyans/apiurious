class GithubUser

  attr_accessor :login, :name

  def initialize(attrs = {})
    @attrs = attrs
    @name = attrs["name"]
    @login = attrs["login"]
    @oauth_token = attrs['token']
  end

  def self.find_by(token)
    user = GithubService.find_user(token)
    new(user)
  end

  def self.followers(token)
    new(GithubService.followers(token))
  end
end
