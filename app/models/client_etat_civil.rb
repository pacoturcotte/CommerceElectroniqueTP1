class ClientEtatCivil < ApplicationRecord
  belongs_to :client
  belongs_to :etat_civil, optional: true
end
