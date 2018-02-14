class Employeur < ApplicationRecord
  belongs_to :adresse
  validates_presence_of :nom
end
