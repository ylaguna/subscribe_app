class MultipleOfNCondition < Condition

    def matched?(subcripion)
        (subcripion.id % self.value) == 0
    end
end
