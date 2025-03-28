require "ruby_llm"

class ChatsController < ApplicationController
  before_action :set_chat

  def index
    @chats = Chat.includes(:messages).order(created_at: :asc)
  end

  def create
    byebug
    @chat = Chat.create(model_id: chat_params)

    respond_to do |format|
      format.turbo_stream # Handles real-time updates
      format.html { redirect_to chat_path(@chat) }
    end
  end

  def show
    @chats = Chat.includes(:messages).order(created_at: :asc) # List all chats for sidebar
  end

  def destroy
    @chat.destroy

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to chats_path, notice: "Chat was successfully deleted." }
    end
  end


  private

  def chat_params
    params[:model_id] || RubyLLM.config.default_model
  end

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
