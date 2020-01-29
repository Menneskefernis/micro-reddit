require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body: "Interesting body text right here")
  end

  test "should be valid" do
    assert @comment.valid?
  end
end
