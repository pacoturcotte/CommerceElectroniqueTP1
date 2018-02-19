class Institution < ApplicationRecord
  belongs_to :adress
  has_many :adresses, inverse_of: :institution
  has_one :study, inverse_of: :institution

  accepts_nested_attributes_for :adresses, :allow_destroy => true
  validates_presence_of :nom
end
