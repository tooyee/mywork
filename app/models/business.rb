class Business < ApplicationRecord

  enum status: {
    "草稿"        => 1,
    "正式"         => 2,
    "关闭"        => 3
  }
  validates :status, inclusion: statuses.keys

  belongs_to :businessflow

  has_many :resourceslines
  has_many :actives, :through => :resourceslines
end
