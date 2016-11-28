class CommentsController < ApplicationController
  def create
    @voice_message = VoiceMessage.find(params[:voice_message_id])
    @comments = @voice_message.comments.create(comments_params)
    redirect_to voice_message_path(@voice_message)
  end

  private
  def comments_params
    params.require(:comment).permit(:author, :body)
  end
end
