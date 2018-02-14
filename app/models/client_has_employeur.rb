class ClientHasEmployeur < ApplicationRecord
  belongs_to :client
  belongs_to :employeur
end
