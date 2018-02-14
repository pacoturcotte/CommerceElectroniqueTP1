class Employeur < ApplicationRecord
  belongs_to :adresse
  has_many :adresses, inverse_of: :employeur
  validates_presence_of :nom
end
