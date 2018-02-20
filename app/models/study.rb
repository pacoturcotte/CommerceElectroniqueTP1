class Study < ApplicationRecord
  belongs_to :client
  belongs_to :institution, optional: true
end
