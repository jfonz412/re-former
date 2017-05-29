require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(username: "Mr. Foo", email: "Foo@email.com", password: "pass123")
  end

  test "should be valid" do
  	assert(@user.valid?)
  end

  test "username can't be blank" do
  	@user.username = "			"
  	assert_not(@user.valid?)
  end

  test "email can't be blank" do
  	@user.email = "			"
  	assert_not(@user.valid?)
  end

  test "password can't be blank" do
  	@user.password = "			"
  	assert_not(@user.valid?)
  end
end
