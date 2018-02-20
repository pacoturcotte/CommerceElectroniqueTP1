class Study < ApplicationRecord
  belongs_to :client
  belongs_to :institution
  validates_presence_of :secteuretudes
end
