json.extract! voice_message, :id, :title, :content, :created_at, :updated_at
json.url voice_message_url(voice_message, format: :json)