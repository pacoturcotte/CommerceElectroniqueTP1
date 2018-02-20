class ClientHasEnfant < ApplicationRecord
  belongs_to :enfant, optional: true
  belongs_to :client
end
