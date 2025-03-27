class MessagesController < ApplicationController
  before_action :set_chat

  def create
    @chat.ask(params[:content])
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
