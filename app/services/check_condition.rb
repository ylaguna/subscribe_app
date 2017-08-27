require 'singleton'

class CheckCondition
    include Singleton

    def won?(subscription)
        @stacked_prizes << matched_conditions_prizes(valid_conditions, subscription)
        @stacked_prizes.shift #todo: validate this guy
    end

    private 
    
    def initialize
        puts "initialize check condition"
        #todo: sync stacked with database in case of shutdown ?
        @stacked_prizes = []
    end

    def valid_conditions
        Condition.all.order(:created_at) #validate stock
    end

    def matched_conditions_prizes(conditions, subscription)
        prizes = []

        conditions.each do |condition|
            prizes << condition.prize if condition.matched?(subscription)
        end

        prizes
    end

end