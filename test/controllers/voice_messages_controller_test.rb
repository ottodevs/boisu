require 'test_helper'

class VoiceMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voice_message = voice_messages(:one)
  end

  test "should get index" do
    get voice_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_voice_message_url
    assert_response :success
  end

  test "should create voice_message" do
    assert_difference('VoiceMessage.count') do
      post voice_messages_url, params: { voice_message: { content: @voice_message.content, title: @voice_message.title } }
    end

    assert_redirected_to voice_message_url(VoiceMessage.last)
  end

  test "should show voice_message" do
    get voice_message_url(@voice_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_voice_message_url(@voice_message)
    assert_response :success
  end

  test "should update voice_message" do
    patch voice_message_url(@voice_message), params: { voice_message: { content: @voice_message.content, title: @voice_message.title } }
    assert_redirected_to voice_message_url(@voice_message)
  end

  test "should destroy voice_message" do
    assert_difference('VoiceMessage.count', -1) do
      delete voice_message_url(@voice_message)
    end

    assert_redirected_to voice_messages_url
  end
end
