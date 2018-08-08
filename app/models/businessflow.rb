class Businessflow < ApplicationRecord
  belongs_to :businessunit

  has_many :transactionflows

  has_many :businesses
end
