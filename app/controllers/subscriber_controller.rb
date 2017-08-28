class SubscriberController < ApplicationController
  before_action { flash.clear }
  
  def index
  end

  def subscribe
    email = params[:subscription][:email]

    response = SubscribeService.instance.subscribe(email)
    flash[response[:status]] = response[:message]

    render :action => :index
  end
end
