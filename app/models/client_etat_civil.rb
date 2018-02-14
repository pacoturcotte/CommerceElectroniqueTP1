class ClientEtatCivil < ApplicationRecord
  belongs_to :client
  belongs_to :etatcivil
end
