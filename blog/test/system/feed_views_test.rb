require "application_system_test_case"

class FeedViewsTest < ApplicationSystemTestCase
  setup do
    @feed_view = feed_views(:one)
  end

  test "visiting the index" do
    visit feed_views_url
    assert_selector "h1", text: "Feed Views"
  end

  test "creating a Feed view" do
    visit feed_views_url
    click_on "New Feed View"

    fill_in "Body", with: @feed_view.body
    fill_in "Title", with: @feed_view.title
    click_on "Create Feed view"

    assert_text "Feed view was successfully created"
    click_on "Back"
  end

  test "updating a Feed view" do
    visit feed_views_url
    click_on "Edit", match: :first

    fill_in "Body", with: @feed_view.body
    fill_in "Title", with: @feed_view.title
    click_on "Update Feed view"

    assert_text "Feed view was successfully updated"
    click_on "Back"
  end

  test "destroying a Feed view" do
    visit feed_views_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feed view was successfully destroyed"
  end
end
