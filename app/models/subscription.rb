class Subscription < ApplicationRecord
    
    def self.subscribe(email)
        subscription = Subscription.create(email: email)
        CheckCondition.won?(subscription)
        require 'pry'; binding.pry
        return "foi"
    end

    # private_class_method def initialize(email)
    #     require 'pry'; binding.pry
    # end
end
