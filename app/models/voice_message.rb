class VoiceMessage < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :audio, AudioUploader
end
