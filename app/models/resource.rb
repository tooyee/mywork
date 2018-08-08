class Resource < ApplicationRecord
  # 资源类型 activeunitflow resourcestype integer 人力, 物料, 产品, 文档, 服务, 管理
  enum resourcetype: {
  "人力"        => 1, #Resources_Human
  "物料"     => 2, #Resources_material
  "产品"        => 3, #Resources_product
  "文档"     => 4, #Resources_document
  "服务"        => 5, #Resources_service
  "管理"     => 6, #Resources_management
  }
  validates :resourcetype, inclusion: resourcetypes.keys

  has_many :activeflows

  has_many :actives

  # belongs_to(:resource,:class_name => 'Resource',
  # :foreign_key=>'buyerid' )

end
