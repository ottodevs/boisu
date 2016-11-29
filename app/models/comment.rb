class Comment < ApplicationRecord
  belongs_to :voice_message
  belongs_to :user
end
