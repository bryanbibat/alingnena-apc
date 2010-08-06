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
    respond_to do |format|
      if @message.save
        format.html { redirect_to messages_url, :notice => "Message was successfully created" }
        format.js
      else
        format.html { render :action => "index" }
        format.js do 
          render :update do |page| 
            page.replace_html :notice, 'There was an error in creating the message.'
          end 
        end
      end
    end
  end

end
