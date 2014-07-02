class Person < ActiveRecord::Base
  has_one :address
  has_many :pets
  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :pets, allow_destroy: true, reject_if: -> (pet_attrs) { pet_attrs[:name].blank? }
end
