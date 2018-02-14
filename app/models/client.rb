class Client < ApplicationRecord
  belongs_to :adresse
  has_many :adresses, inverse_of: :client
  has_many :client_has_enfants
  has_many :enfants, through: :client_has_enfants
  has_many :client_etat_civils
  has_many :etat_civils, through: :client_etat_civils
  has_many :client_has_employeurs
  has_many :employeurs, through: :client_has_employeurs

  validates_presence_of :nom

  accepts_nested_attributes_for :employeurs, :reject_if => :all_blank,:allow_destroy => true
  accepts_nested_attributes_for :enfants, :reject_if => :all_blank,:allow_destroy => true
  accepts_nested_attributes_for :etudes, :reject_if => :all_blank,:allow_destroy => true
  accepts_nested_attributes_for :etat_civils, :reject_if => :all_blank,:allow_destroy => true
  accepts_nested_attributes_for :adresses, :reject_if => :all_blank,:allow_destroy => true

end
