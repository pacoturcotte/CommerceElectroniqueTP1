class Employeur < ApplicationRecord
  has_one :adress, inverse_of: :employeur
  validates_presence_of :nom
end
