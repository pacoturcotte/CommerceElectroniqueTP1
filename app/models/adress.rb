class Adress < ApplicationRecord
  has_one :client, inverse_of: :adress
  validates_presence_of :numerocivique
end
