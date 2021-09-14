class Order < ApplicationRecord
  ORDER_NUMBERS = %w(2ToGCe6v
2pnoKXEf
2tRCRzvf
3oGb3nRm
3oL9TRmi
42PuQ3WX
4iJ6GP2e
4qzHViyE
5CMHYcn4
73bAz5f8)
  validates :order_number, uniqueness: true, message: "Order number had been used already"
  validates :order_number, inclusion: { in: ORDER_NUMBERS }, message: "This is not a valid order number"
end
