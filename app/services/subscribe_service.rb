require 'singleton'

class SubscribeService
    include Singleton

    def subscribe(email)
        subscription = Subscription.create(email: email)
        prize = CheckCondition.instance.won?(subscription)
        
        ret = { }
        
        ret[:email] = email
        ret[:message] = prize.nil? ? "Não foi dessa vez" : "Você ganhou!"
        
        ret
    end
end