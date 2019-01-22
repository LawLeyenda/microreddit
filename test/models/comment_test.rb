require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @comment = Comment.new(body: "This is the body of a comment", user_id: 1, post_id: 2)
  end
  
  test "Comment is present" do
    @comment.body = "  " * 6
    assert_not @comment.valid?
  end

  test "Comment should have a maximum length" do
    @comment.body = "a" * 256
    assert_not @comment.valid?
  end
end
