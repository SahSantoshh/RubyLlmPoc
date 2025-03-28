class MessagesController < ApplicationController
  before_action :set_chat

  def create
    byebug
    message_content = message_params[:content]
    Rails.logger.debug "Message question received: #{message_content}" # Debug log

    if message_content.blank?
      Rails.logger.error "Empty message content!"
      return
    end

    @chat.ask(message_params[:content])
    respond_to do |format|
      format.turbo_stream  # Respond with turbo stream for real-time updates
      format.html { redirect_to @chat }
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end
end
