class Employeur < ApplicationRecord
  belongs_to :adress
  has_many :adresses, inverse_of: :employeur
  has_many :clients, through: :client_has_employeurs
  validates_presence_of :nom
end
