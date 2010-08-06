class MessagesController < ApplicationController

  def index
    @messages = Message.all(:order => "created_at desc")
    @message = Message.new
  end

  def message_table 
    render :partial => Message.all(:order => "created_at desc")
  end
  
  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to messages_url, :notice => "Message was successfully created"
    else
      render :action => "index"
    end
  end

end
