class SubscriberController < ApplicationController
  
  def index
  end

  def subscribe
    email = params[:subscription][:email]

    response = SubscribeService.instance.subscribe(email)
    flash[response[:status]] = response[:message]

    render :action => :index
  end
end
