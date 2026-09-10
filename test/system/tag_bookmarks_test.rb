require "application_system_test_case"

class TagBookmarksTest < ApplicationSystemTestCase
  setup do
    @tag_bookmark = tag_bookmarks(:one)
  end

  test "visiting the index" do
    visit tag_bookmarks_url
    assert_selector "h1", text: "Tag bookmarks"
  end

  test "should create tag bookmark" do
    visit tag_bookmarks_url
    click_on "New tag bookmark"

    fill_in "Tag", with: @tag_bookmark.tag_id
    fill_in "User", with: @tag_bookmark.user_id
    click_on "Create Tag bookmark"

    assert_text "Tag bookmark was successfully created"
    click_on "Back"
  end

  test "should update Tag bookmark" do
    visit tag_bookmark_url(@tag_bookmark)
    click_on "Edit this tag bookmark", match: :first

    fill_in "Tag", with: @tag_bookmark.tag_id
    fill_in "User", with: @tag_bookmark.user_id
    click_on "Update Tag bookmark"

    assert_text "Tag bookmark was successfully updated"
    click_on "Back"
  end

  test "should destroy Tag bookmark" do
    visit tag_bookmark_url(@tag_bookmark)
    click_on "Destroy this tag bookmark", match: :first

    assert_text "Tag bookmark was successfully destroyed"
  end
end
