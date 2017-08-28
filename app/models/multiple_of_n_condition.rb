class MultipleOfNCondition < Condition
  def matched?(subcripion)
    (subcripion.id % value) == 0
  end
end
