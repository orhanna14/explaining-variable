class Tipper
  TAX = 0.05

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    taxable_amount = amount * TAX
    discounted_amount = amount * (discount_percentage / 100.0)
    tippable_amount = amount * (tip_percentage / 100.0)
    amount + taxable_amount - discounted_amount + tippable_amount
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage
end
