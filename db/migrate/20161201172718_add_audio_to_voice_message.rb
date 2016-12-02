class AddAudioToVoiceMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :voice_messages, :audio, :string
  end
end
