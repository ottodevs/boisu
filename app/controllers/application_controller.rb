class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :pass_voice_message, only: [:index, :show, :edit, :new]

  def pass_voice_message
    @voice_message = VoiceMessage.new
  end

  def not_found
    #raise ActionController::RoutingError.new('Not Found')
    raise("not found")
  end
end
