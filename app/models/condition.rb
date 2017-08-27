class Condition < ActiveRecord::Base
  self.abstract_class = true

  belongs_to :prize
end
