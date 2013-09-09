class LoginManager

  @users = Array.new
  def initialize()
    @users = Array.new
  end
  def is_login_ok?(user,password)
    @users.select{ |u| u.username == user && u.password == password}
            .length >0 
  end

  def add_user(name,password)
    @users << User.new(username:name,password:password)
  end

  def change_password(username,oldpass,newpass)
    found = @users.select{ |u| u.username == username && u.password == oldpass}.first
    found.password = newpass
  end
end


class User
  attr_accessor :username, :password
  def initialize(params = {})
    @username = params.fetch(:username)
    @password = params.fetch(:password)
  end
end
