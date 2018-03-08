class MessageController < ApplicationController
  def index
    @messages=Message.paginate(:all,:page=>parms[:page],:order=>'create_at DESC')
    respond_to do |format|
      render => messages
end
