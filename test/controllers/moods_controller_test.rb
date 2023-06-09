require "test_helper"

class MoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mood = moods(:one)
  end

  test "should get index" do
    get moods_url, as: :json
    assert_response :success
  end

  test "should create mood" do
    assert_difference("Mood.count") do
      post moods_url, params: { mood: { activity: @mood.activity, date_time: @mood.date_time, happiness: @mood.happiness, health: @mood.health, love: @mood.love, note: @mood.note, school: @mood.school, vibe: @mood.vibe, work: @mood.work } }, as: :json
    end

    assert_response :created
  end

  test "should show mood" do
    get mood_url(@mood), as: :json
    assert_response :success
  end

  test "should update mood" do
    patch mood_url(@mood), params: { mood: { activity: @mood.activity, date_time: @mood.date_time, happiness: @mood.happiness, health: @mood.health, love: @mood.love, note: @mood.note, school: @mood.school, vibe: @mood.vibe, work: @mood.work } }, as: :json
    assert_response :success
  end

  test "should destroy mood" do
    assert_difference("Mood.count", -1) do
      delete mood_url(@mood), as: :json
    end

    assert_response :no_content
  end
end
