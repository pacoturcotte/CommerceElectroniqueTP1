class Etude < ApplicationRecord
  belongs_to :client
  belongs_to :institution
  has_many :institutions, inverse_of: :etude
  has_many :clients, inverse_of: :etude
  validates_presence_of :secteuretudes

  accepts_nested_attributes_for :institutions, :reject_if => :all_blank,:allow_destroy => true
end
