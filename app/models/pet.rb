class Pet < ActiveRecord::Base
  validates_length_of :name, minimum: 3
end
