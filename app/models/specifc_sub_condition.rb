class SpecifcSubCondition < Condition
    def matched?(subscriber)
        subscriber.id == self.subscriber
    end
end
