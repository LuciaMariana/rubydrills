require_relative 'user'

class LoginManagerWithShared

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


