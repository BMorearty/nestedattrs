class Address < ActiveRecord::Base
  belongs_to :person
  validates_inclusion_of :state, in: [ 'CA', 'WA' ]
end
