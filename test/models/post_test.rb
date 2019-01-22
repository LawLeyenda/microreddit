require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @post = Post.new(title: 'Title', body: 'Content of the post.', user_id: 1)
  end

  test 'body should be present' do
    @post.body = ' ' * 6
    assert_not @post.valid?
  end

  test "body should have a maximum length" do
    @post.body = "a" * 256
    assert_not @post.valid?
  end


end
