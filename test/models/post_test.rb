require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Example post", 
                     body: "Lorem Ipsum et Dolor sit amet",
                     user_id: 1)
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = "     "
    assert_not @post.valid?
  end

  test "body should be present" do
    @post.body = "     "
    assert_not @post.valid?
  end

  test "title should not be too long" do
    @post.title = "a" * 51
    assert_not @post.valid?
  end

  test "body should not be too long" do
    @post.body = "a" * 5001
    assert_not @post.valid?
  end
end
