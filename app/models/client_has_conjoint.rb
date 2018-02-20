class ClientHasConjoint < ApplicationRecord
  belongs_to :client
  belongs_to :client_conjoint, class_name: 'Client'
  has_one :client
end
