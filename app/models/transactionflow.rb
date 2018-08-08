class Transactionflow < ApplicationRecord
  enum transactiontype: {
    "Sale"        => 1,
    "Purchase"    => 2
  }
  validates :transactiontype, inclusion: transactiontypes.keys
  enum flowtype: {
  "Test"        => 1,
  "Release"     => 2
  }
  validates :flowtype, inclusion: flowtypes.keys
  
  belongs_to :businessflow
  belongs_to :transactionunit


  has_many :activeflows

end
