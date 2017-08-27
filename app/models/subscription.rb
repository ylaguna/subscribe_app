class Subscription < ApplicationRecord
    
    def self.subscribe(email)
        subscription = Subscription.create(email: email)
        CheckCondition.instance.won?(subscription)
    end

    # private_class_method def initialize(email)
    #     require 'pry'; binding.pry
    # end
end
