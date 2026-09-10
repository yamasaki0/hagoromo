require "application_system_test_case"

class RepostsTest < ApplicationSystemTestCase
  setup do
    @repost = reposts(:one)
  end

  test "visiting the index" do
    visit reposts_url
    assert_selector "h1", text: "Reposts"
  end

  test "should create repost" do
    visit reposts_url
    click_on "New repost"

    fill_in "Post", with: @repost.post_id
    fill_in "User", with: @repost.user_id
    click_on "Create Repost"

    assert_text "Repost was successfully created"
    click_on "Back"
  end

  test "should update Repost" do
    visit repost_url(@repost)
    click_on "Edit this repost", match: :first

    fill_in "Post", with: @repost.post_id
    fill_in "User", with: @repost.user_id
    click_on "Update Repost"

    assert_text "Repost was successfully updated"
    click_on "Back"
  end

  test "should destroy Repost" do
    visit repost_url(@repost)
    click_on "Destroy this repost", match: :first

    assert_text "Repost was successfully destroyed"
  end
end
