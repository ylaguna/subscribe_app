require 'singleton'

class SubscribeService
  include Singleton

  def subscribe(email)
    subscription = Subscription.create!(email: email)

    prize = CheckCondition.instance.won?(subscription)

    prize.nil? ? Message.failed_message : Message.success_message
  rescue => exception
    Message.error_message(exception.message)
  end
end
