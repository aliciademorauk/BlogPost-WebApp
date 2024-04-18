require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? is true for unpublished posts where user has selected blank for datetime_select" do
    assert blog_posts(:draft).draft?
  end

  test "draft? is false for published posts" do
    refute blog_posts(:published).draft?
  end

  test "draft? is false for scheduled posts" do
    refute blog_posts(:scheduled).draft?
  end

  test "published? is true for published posts" do
    assert blog_posts(:published).published?
  end

  test "published? is false for scheduled posts" do
    refute blog_posts(:scheduled).published?
  end

  test "published? is false for draft posts" do
    refute blog_posts(:draft).published?
  end

  test "scheduled? is true for scheduled posts" do
    assert blog_posts(:scheduled).scheduled?
  end

  test "scheduled? is false for draft posts" do
    refute blog_posts(:draft).scheduled?
  end

  test "scheduled? is false for published posts" do
    refute blog_posts(:published).scheduled?
  end

end
