class Activeflow < ApplicationRecord

  # 账户类型 activeunitflow accouttype integer 计划, 合约, 核算
  enum accouttype: {
    "Accout Plan"        => 1,
    "Accout contract"    => 2,
    "Accout accounting"  => 3
  }
  validates :accouttype, inclusion: accouttypes.keys

  # 流程排序序号 activeunitflow floworderid integer

  # 流程类型 activeunitflow flowtype integer 测试, 发布
  enum flowtype: {
  "Test"        => 1,
  "Release"     => 2
  }
  validates :flowtype, inclusion: flowtypes.keys

  # 凭证模板类型 activeunitflow vouchertemplatetype boolean 有, 无
  enum vouchertemplatetype: {
  "yes"        => 1,
  "no"     => 2
  }
  validates :vouchertemplatetype, inclusion: vouchertemplatetypes.keys

  # 内容类型 activeunitflow contenttype integer 人力, 物料, 产品, 文档, 服务, 管理
  enum contenttype: {
  "Content Human"        => 1,
  "Content material"     => 2,
  "Content product"        => 3,
  "Content document"     => 4,
  "Content service"        => 5,
  "Content management"     => 6,
  }
  validates :contenttype, inclusion: contenttypes.keys

  # 资源类型 activeunitflow resourcestype integer 人力, 物料, 产品, 文档, 服务, 管理
  enum resourcestype: {
  "Resources Human"        => 1,
  "Resources material"     => 2,
  "Resources product"        => 3,
  "Resources document"     => 4,
  "Resources service"        => 5,
  "Resources management"     => 6,
  }
  validates :resourcestype, inclusion: resourcestypes.keys

  # 子交易类型 activeunitflow subtransactiontype integer 计划, 合约, 物流, 核算, 收支, 核销
  enum subtransactiontype: {
  "Sub transaction Plan"        => 1,
  "Sub transaction contract"     => 2,
  "Sub transaction logistics"        => 3,
  "Sub transaction accounting"     => 4,
  "Sub transaction revenue and expenditure"        => 5,
  "Sub transaction check out"     => 6,
  }
  validates :subtransactiontype, inclusion: subtransactiontypes.keys

  # 库存核算类型 activeunitflow stockaccounttype integer 出库, 入库，核销 / 同品, 异品,，退货
  enum stockaccounttype: {
  "Out of storage for same products"           => 1,
  "Out of storage for different  products"     => 2,
  "In of storage for same products"            => 3,
  "In of storage for different  products"      => 4,
  "Return goods for same products"             => 5,
  "check out for different  products"          => 6,
  }
  validates :stockaccounttype, inclusion: stockaccounttypes.keys

  # 复制资源类型 activeunitflow copyresourcestype integer 有, 无
  enum copyresourcestype: {
  "Copy"        => 1,
  "No_copy"     => 2
  }
  validates :copyresourcestype, inclusion: copyresourcestypes.keys


  belongs_to :transactionflow
  belongs_to :activeunit
  # belongs_to(:Category,:class_name => 'Category', :foreign_key=>'cat_id' )
  belongs_to(:beforeactiveflow,:class_name => 'Activeflow', :foreign_key=>'beforeactiveunit_id' )
  belongs_to(:afteractiveflow,:class_name => 'Activeflow', :foreign_key=>'afteractiveunit_id' )
  has_many :actives

end
