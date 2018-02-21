class ClientHasConjoint < ApplicationRecord
  belongs_to :client, inverse_of: :client_has_conjoints
  belongs_to :conjoint, :class_name => 'Client'
end
