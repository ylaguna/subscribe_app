class SpecifcSubCondition < Condition
    def matched?(subscriber)
        subscriber.id == self.value
    end
end
