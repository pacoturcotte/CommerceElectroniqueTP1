class Client < ApplicationRecord
  has_one :adress, inverse_of: :client
  has_many :client_has_enfants
  has_many :studies, inverse_of: :client
  has_many :institutions, through: :studies, dependent: :destroy
  has_many :enfants, through: :client_has_enfants, dependent: :destroy
  has_many :client_etat_civils
  has_many :etat_civils, through: :client_etat_civils, dependent: :destroy
  has_many :client_has_employeurs
  has_many :employeurs, through: :client_has_employeurs, dependent: :destroy
  has_many :conjoint, class_name: 'Client'

  validates_presence_of :nom

  accepts_nested_attributes_for :employeurs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :enfants, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :studies, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :etat_civils, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :adress, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :institutions, :reject_if => :all_blank, :allow_destroy => true

end
