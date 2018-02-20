class Institution < ApplicationRecord
  belongs_to :adress
  has_one :adress, inverse_of: :institution
  has_many :studies, inverse_of: :institution
  has_many :clients, through: :studies

  accepts_nested_attributes_for :adresses, :allow_destroy => true
  accepts_nested_attributes_for :studies, :allow_destroy => true
  accepts_nested_attributes_for :clients, :allow_destroy => true
  validates_presence_of :nom
end
