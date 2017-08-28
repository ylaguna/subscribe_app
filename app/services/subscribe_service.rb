require 'singleton'

class SubscribeService
    include Singleton

    def subscribe(email)
        begin
            subscription = Subscription.create!(email: email)
            
            prize = CheckCondition.instance.won?(subscription)
            
            ret = { }
            
            if prize.nil?
                ret[:status] = :info
                ret[:message] = "Nope! Try again tommorow? ;)"
            
            else
                ret[:status] = :notice
                ret[:message] = "Gotcha! You winned a prize, see your email for more information!"
            
            end
            
            ret
        rescue => exception
            { status: :error, message: exception.message}
        end
    end
end