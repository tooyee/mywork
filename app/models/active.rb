class Active < ApplicationRecord

  enum status: {
    "草稿"        => 1,
    "正式"         => 2,
    "关闭"        => 3
  }
  validates :status, inclusion: statuses.keys

  belongs_to :activeflow
  belongs_to :resource
  has_many :resourceslines
  has_many :businesses, :through => :resourceslines


  def sum_quan_total
    # line_items.to_a.sum { |item| item.total_price }
    resourceslines.to_a.sum { |resourcesline| resourcesline.quantity }
  end

  def sum_openqty_total
    # line_items.to_a.sum { |item| item.total_price }
    resourceslines.to_a.sum { |resourcesline| resourcesline.openqty }
  end

  def sum_price_total
    # line_items.to_a.sum { |item| item.total_price }
    resourceslines.to_a.sum { |resourcesline| resourcesline.price_total }
  end

  def sum_vat_price_total
    # line_items.to_a.sum { |item| item.total_price }
    resourceslines.to_a.sum { |resourcesline| resourcesline.vat_price_total }
  end

  def sum_cost_total
    # line_items.to_a.sum { |item| item.total_price }
    resourceslines.to_a.sum { |resourcesline| resourcesline.cost_total }
  end

  def sum_vat_cost_total
    # line_items.to_a.sum { |item| item.total_price }
    resourceslines.to_a.sum { |resourcesline| resourcesline.vat_cost_total }
  end

  def add_old_resourceslines(active)
    active.resourceslines.each do |old_resourceslines|

      new_record = old_resourceslines.dup
      new_record.quantity = new_record.openqty
      new_record.baseid = old_resourceslines.id
      # new_record.price = 20.00
      resourceslines << new_record
      # resourceslines << old_resourceslines
      # active.resourceslines << old_resourceslines
      # old_resourceslines.openqty = 0
      @resourcesline = Resourcesline.find(old_resourceslines.id)
      @resourcesline.openqty = 0
      @resourcesline.save

      # throw :abort
    end


  end

  def update_old_resourceslines(active)

    active.resourceslines.each do |old_resourceslines|
      # new_record = old_resourceslines.dup
      # new_record.openqty = 0
      # # new_record.price = 20.00
      # resourceslines << new_record


      # old_resourceslines.openqty = 0

      # throw :abort
    end

  end



end
