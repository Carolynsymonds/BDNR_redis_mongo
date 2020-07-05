require 'test_helper'

class FeedViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_view = feed_views(:one)
  end

  test "should get index" do
    get feed_views_url
    assert_response :success
  end

  test "should get new" do
    get new_feed_view_url
    assert_response :success
  end

  test "should create feed_view" do
    assert_difference('FeedView.count') do
      post feed_views_url, params: { feed_view: { body: @feed_view.body, title: @feed_view.title } }
    end

    assert_redirected_to feed_view_url(FeedView.last)
  end

  test "should show feed_view" do
    get feed_view_url(@feed_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_feed_view_url(@feed_view)
    assert_response :success
  end

  test "should update feed_view" do
    patch feed_view_url(@feed_view), params: { feed_view: { body: @feed_view.body, title: @feed_view.title } }
    assert_redirected_to feed_view_url(@feed_view)
  end

  test "should destroy feed_view" do
    assert_difference('FeedView.count', -1) do
      delete feed_view_url(@feed_view)
    end

    assert_redirected_to feed_views_url
  end
end
