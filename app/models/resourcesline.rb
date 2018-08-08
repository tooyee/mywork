class Resourcesline < ApplicationRecord

  belongs_to :active
  belongs_to :business
  belongs_to :resource

  enum status: {
    "Draft"        => 1,
    "Open"         => 2,
    "Close"        => 3
  }
  validates :status, inclusion: statuses.keys

  enum vatgroup: {
    "17%"        => 1,
    "6%"         => 2,
    "3%"         => 3,
    "0%"         => 4,
  }
  validates :vatgroup, inclusion: vatgroups.keys


  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :cost, numericality: {greater_than_or_equal_to: 0}

  def price_total
      price * quantity
  end

  def cost_total
      cost * quantity
  end

  def vat_price_total
    eval(sprintf("%8.2f",(price_total/1.17)*0.17))
  end


  def vat_cost_total
    eval(sprintf("%8.2f",(cost_total/1.17)*0.17))
  end

  def roundf(places)
      temp = self.to_s.length
      sprintf("%#{temp}.#{places}f",self).to_f
  end

  def update_old_resourceslines_openqty(resourcesline, update_quantity)

    @old_resourcesline = Resourcesline.find(resourcesline.baseid)
    old_quantity = resourcesline.quantity
    new_quantity = update_quantity.to_i
    old_openqty = @old_resourcesline.openqty
    @old_resourcesline.openqty = old_openqty + old_quantity - new_quantity
    @old_resourcesline.save

  end

end
