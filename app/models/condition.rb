class Condition < ActiveRecord::Base
  belongs_to :prize

  def matched?(subscripition)
    raise "Not implemented, must override"
  end
end
