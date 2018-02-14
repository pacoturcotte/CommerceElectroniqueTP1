class Institution < ApplicationRecord
  belongs_to :adresse
  has_many :adresses, inverse_of: :institution
end
