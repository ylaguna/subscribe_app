class Condition < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :prize

  def matched?(subscripition)
    raise "Not implemented, must override"
  end
end
