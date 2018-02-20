class Employeur < ApplicationRecord
  belongs_to :adress
  has_one :adress, inverse_of: :employeur
  has_many :clients, through: :client_has_employeurs
  validates_presence_of :nom
end
