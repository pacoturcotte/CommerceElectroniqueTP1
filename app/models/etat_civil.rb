class EtatCivil < ApplicationRecord
  validates_presence_of :type
  has_many :clients, through: :client_etat_civils
end
