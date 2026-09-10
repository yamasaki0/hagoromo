require "test_helper"

class TagBookmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_bookmark = tag_bookmarks(:one)
  end

  test "should get index" do
    get tag_bookmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_bookmark_url
    assert_response :success
  end

  test "should create tag_bookmark" do
    assert_difference("TagBookmark.count") do
      post tag_bookmarks_url, params: { tag_bookmark: { tag_id: @tag_bookmark.tag_id, user_id: @tag_bookmark.user_id } }
    end

    assert_redirected_to tag_bookmark_url(TagBookmark.last)
  end

  test "should show tag_bookmark" do
    get tag_bookmark_url(@tag_bookmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_bookmark_url(@tag_bookmark)
    assert_response :success
  end

  test "should update tag_bookmark" do
    patch tag_bookmark_url(@tag_bookmark), params: { tag_bookmark: { tag_id: @tag_bookmark.tag_id, user_id: @tag_bookmark.user_id } }
    assert_redirected_to tag_bookmark_url(@tag_bookmark)
  end

  test "should destroy tag_bookmark" do
    assert_difference("TagBookmark.count", -1) do
      delete tag_bookmark_url(@tag_bookmark)
    end

    assert_redirected_to tag_bookmarks_url
  end
end
