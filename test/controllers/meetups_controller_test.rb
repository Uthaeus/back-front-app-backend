require "test_helper"

class MeetupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meetup = meetups(:one)
  end

  test "should get index" do
    get meetups_url, as: :json
    assert_response :success
  end

  test "should create meetup" do
    assert_difference("Meetup.count") do
      post meetups_url, params: { meetup: { attending: @meetup.attending, description: @meetup.description, favorited: @meetup.favorited, time: @meetup.time, title: @meetup.title } }, as: :json
    end

    assert_response :created
  end

  test "should show meetup" do
    get meetup_url(@meetup), as: :json
    assert_response :success
  end

  test "should update meetup" do
    patch meetup_url(@meetup), params: { meetup: { attending: @meetup.attending, description: @meetup.description, favorited: @meetup.favorited, time: @meetup.time, title: @meetup.title } }, as: :json
    assert_response :success
  end

  test "should destroy meetup" do
    assert_difference("Meetup.count", -1) do
      delete meetup_url(@meetup), as: :json
    end

    assert_response :no_content
  end
end
