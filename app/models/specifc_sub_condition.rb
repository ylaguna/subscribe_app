class SpecifcSubCondition < Condition
  def matched?(subscriber)
    subscriber.id == value
  end
end
