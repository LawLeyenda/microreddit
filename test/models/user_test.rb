require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = " " * 6
    assert_not @user.valid?
  end

  test "name should be unique" do
    duplicate_user = @user.dup
    duplicate_user.name = @user.name.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 17
    assert_not @user.valid?
  end

  test "name should not be too short" do
    @user.name = "a" * 3@
    assert_not @user.valid?
  end
end
