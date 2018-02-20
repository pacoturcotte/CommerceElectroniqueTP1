class Adress < ApplicationRecord
  has_many :clients, inverse_of: :adress
  has_many :institutions, inverse_of: :adress
  has_many :employeurs, inverse_of: :adress
  validates_presence_of :numerocivique
end
