class Study < ApplicationRecord
  belongs_to :client
  belongs_to :institution
  has_many :institutions, inverse_of: :study
  validates_presence_of :secteuretudes

  accepts_nested_attributes_for :institutions, :reject_if => :all_blank,:allow_destroy => true
  accepts_nested_attributes_for :clients, :allow_destroy => true
end
