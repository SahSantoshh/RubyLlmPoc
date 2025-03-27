require "ruby_llm"

class ChatsController < ApplicationController
  before_action :set_chat

  def index
    @chats = Chat.includes(:messages).order(created_at: :asc)
  end

  def create
    @message = @chat.ask(params[:content])
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @chat } # Add this line to handle regular requests
    end
  end

  def show
    @chats = Chat.includes(:messages).order(created_at: :asc) # List all chats for sidebar
  end


  private

  def set_chat
    @chat = if params[:id].present?
              Chat.find(params[:id])
    elsif Chat.count.positive?
      Chat.last
    else
      Chat.create
    end
  end
end
