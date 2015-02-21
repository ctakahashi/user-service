require_relative '../client.rb'
require 'pry'

describe "client" do
  before(:all) do
    User.base_uri = "http://localhost:3000"

    User.destroy("trotter")

    User.update("paul", {:bio => "rubyist"})

    User.create(:name => "bryan", :email => "random")
  end
  
  it "should get a user" do
  	user = User.find_by_name("paul")
  	user["name"].should == "paul"
  	user["email"].should == "paul@pauldix.net"
  	user["bio"].should == "rubyist"
  end

  it "should return nil for a user not found" do
  	User.find_by_name("gosling").should be_nil
  end

  it "should create a user" do
    user = User.create({
  	  :name => "trotter",
  	  :email => "no spam",
  	  :password => "whatev"})
  	
    user["name"].should == "trotter"
  	user["email"].should == "no spam"
  	User.find_by_name("trotter").should == user
  end

  it "should update a user" do
  	user = User.update("paul", {:bio => "rubyist and author"})
  	user["name"].should == "paul"
  	user["bio"].should == "rubyist and author"
  	User.find_by_name("paul").should == user
  end

  it "should destroy a user" do
  	User.destroy("bryan").should == true
  	User.find_by_name("bryan").should be_nil
  end

  it "should verify login credentials" do
  	user = User.login("paul", "strongpass")
  	user["name"].should == "paul"
  end

  it "should return nil with invalid credentials" do
  	User.login("paul", "wrongpassword").should be_nil
  end

end