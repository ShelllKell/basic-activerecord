require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

# customers = Customer.all
#
# customers.each do |customer|
#   puts customer.inspect
# end
#
# p '*' * 20
#
# first_customer = Customer.first
# p first_customer
#
# p '*' * 20
#
# last_customer = Customer.last
# p last_customer
#
# p '*' * 20
#
# customers = Customer.find(3)
# p customers
#
# p '*' * 20
#
# customers = Customer.where(state: 'Colorado')
# customers.each do |state|
#   puts state.inspect
# end
#
# p '*' * 20
#
# customers = Customer.first(5)
# customers.each do |cust|
#   puts cust.inspect
# end
#
# p '*' * 20
#
# customers = Customer.order(:name)
# customers.each do |cust|
#   puts cust.inspect
# end
#
# p '*' * 20
#
# customers = Customer.order(name: :desc)
# customers.each do |cust|
#   puts cust.inspect
# end
#
# p '*' * 20
#
# customers = Item.all
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Item.where("name like 'boot%'")
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Order.all
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Order.first(5)
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Order.last(5)
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Customer.pluck(:name, :email)
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Customer.pluck(:id, :name, :address)
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Customer.count
#   p customers
#
# p '*' * 20
#
# customers = Order.sum(:amount)
#  p customers.to_s.to_f
#
# p '*' * 20
#
# customers = Order.where(id: 1).sum(:amount)
# p customers.to_s.to_f
#
# p '*' * 20
#
# customers = Order.average(:amount)
# p customers.round(2).to_s.to_f
#
# p '*' * 20
#
# customers = Order.minimum(:amount)
# p customers.to_s.to_f
#
# p '*' * 20
#
# customers = Order.maximum(:amount)
# p customers.to_s.to_f

# p '*' * 50
#
# customers = Order.select("customer_id, amount").group("customer_id").order(customer_id: :asc).minimum("amount")
# p customers

# p '*' * 50
#
# customers = Order.order(:id, :asc).sum(:amount)
# p customers.to_s.to_f

# p '*' * 20
#
# customers = Customer.where(state: 'Colorado', city: 'Rigobertoside')
#   customers.each do |cust|
#     p cust
#   end
#
# p '*' * 20
#
# customers = Customer.where("state = 'Ohio' OR state = 'Virginia'")
# customers.each do |cust|
#   p cust
# end
#
# p '*' * 20
#
# customers = Item.find_by(id: 3).update(description:  "board01")
# p customers

# p '*' * 20
#
# customers = Item.create(name: "kayak01", description: "one person river kayak")
# p customers

# p '*' * 20
#
# Item.find(16).destroy

p '*' * 20

p Order.select("orders.id, customers.name, orders.amount").joins("join customers on orders.customer_id = customers.id").to_sql




