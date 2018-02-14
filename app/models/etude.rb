class Etude < ApplicationRecord
  belongs_to :client
  belongs_to :institution
  has_many :institutions, inverse_of: :etude
  has_many :clients, inverse_of: :etude
end
