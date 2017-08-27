class SubscriberController < ApplicationController
  
  def index
  end

  def subscribe
    email = params[:subscription][:email]
    render :json => SubscribeService.instance.subscribe(email)
  end
end
