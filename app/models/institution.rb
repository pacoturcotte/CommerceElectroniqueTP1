class Institution < ApplicationRecord
  has_one :adress, inverse_of: :institution

  accepts_nested_attributes_for :adress, :allow_destroy => true
  validates_presence_of :nom
end
