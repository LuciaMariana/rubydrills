class User
  attr_accessor :username, :password
  def initialize(params = {})
    @username = params.fetch(:username)
    @password = params.fetch(:password)
  end
end
