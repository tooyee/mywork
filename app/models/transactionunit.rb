class Transactionunit < ApplicationRecord


  # belongs_to :businessunit, optional: true
  # has_many :activeunits

  has_many :transactionflow
  
end
