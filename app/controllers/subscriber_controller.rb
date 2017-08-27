class SubscriberController < ApplicationController
  
  def index
    
  end

  def subscribe
    email = params[:subscriber][:email]
    render :json => SubscribeService.instance.subscribe(email)
  end
end
