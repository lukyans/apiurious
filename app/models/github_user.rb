class GithubUser

  attr_accessor :login, :name

  def initialize(attrs = {})
  
    @attrs = attrs
    @name = attrs["name"]
    @login = attrs["login"]
  end

  def self.find_by(token)
    new(GithubService.find_user(token))
    # body = JSON.parse(response.env["body"])
    #user = GithubUser.new
    # user.login = response['login']
    # user.name = response['name']
    #new(user)
  end
end
