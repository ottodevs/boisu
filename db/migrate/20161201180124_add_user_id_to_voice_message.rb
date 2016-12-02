class AddUserIdToVoiceMessage < ActiveRecord::Migration[5.0]
  def change
    add_reference :voice_messages, :user, foreign_key: true
  end
end
