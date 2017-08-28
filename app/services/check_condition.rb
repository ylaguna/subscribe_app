require 'singleton'

class CheckCondition
    include Singleton

    def won?(subscription)
        sync_stacked_prizes(subscription)
        get_prize
    end

    private 

    def get_prize
        prize = @stacked_prizes.shift
        prize = @stacked_prizes.shift while prize.nil? == false && prize.amount == 0  
        return nil if prize.nil?
        
        prize.amount = prize.amount - 1 
        prize.save
        prize
    end
    
    def sync_stacked_prizes(subscription)
        @stacked_prizes.concat matched_conditions_prizes(valid_conditions, subscription)
    end

    def initialize
        puts "initialize check condition"
        #todo: sync stacked with database in case of shutdown ?
        @stacked_prizes = []
    end

    def valid_conditions
        Condition.joins(:prize).where("prizes.amount > 0").order(:created_at)
    end

    def matched_conditions_prizes(conditions, subscription)
        prizes = []

        conditions.each do |condition|
            prizes << condition.prize if condition.matched?(subscription)
        end

        prizes
    end

end