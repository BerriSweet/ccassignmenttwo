require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get contents_url
    assert_response :success
  end

  test "should get new" do
    get new_content_url
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
      post contents_url, params: { content: { course: @content.course, unit_Five: @content.unit_Five, unit_Four: @content.unit_Four, unit_One: @content.unit_One, unit_Three: @content.unit_Three, unit_Two: @content.unit_Two} }
    end

    assert_redirected_to content_url(Content.last)
  end

  test "should show content" do
    get content_url(@content)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_url(@content)
    assert_response :success
  end

  test "should update content" do
    patch content_url(@content), params: { content: { course: @content.course, unit_Five: @content.unit_Five, unit_Four: @content.unit_Four, unit_One: @content.unit_One, unit_Three: @content.unit_Three, unit_Two: @content.unit_Two} }
    assert_redirected_to content_url(@content)
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete content_url(@content)
    end

    assert_redirected_to contents_url
  end
end
