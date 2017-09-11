class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params_message)
    @message.user = current_user
    if @message.save then redirect_to messages_path
    else render :new
    end
  end

  def private params_message
    params.require(:message).permit(:user, :content)
  end

end
