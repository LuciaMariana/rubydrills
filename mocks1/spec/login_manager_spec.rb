require_relative '../lib/login_manager'
require 'rspec'
describe LoginManager do
    let(:lm) { LoginManager.new }
    
  describe "Adding Users" do

    it "disallows logging in the user with wrong password" do
      lm.add_user("a","pass")  
      lm.is_login_ok?("a","BADpass").should == false
    end

    it "allows logging in the user after adding them" do
      lm.add_user("a","pass")  
      lm.is_login_ok?("a","pass").should == true
    end
  end

  describe "changing passwords" do
    it "allows changing password for a user" do
      lm.add_user "a","pass1"
      lm.change_password "a","pass1","pass2"

      lm.is_login_ok?("a","pass2").should == true
    end
  end
end
