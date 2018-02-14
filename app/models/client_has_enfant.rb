class ClientHasEnfant < ApplicationRecord
  belongs_to :enfant
  belongs_to :client
end
