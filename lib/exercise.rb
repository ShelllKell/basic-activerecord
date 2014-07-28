require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

customers = Customer.all

customers.each do |customer|
  puts customer.inspect
end

p '*' * 20

first_customer = Customer.first
p first_customer

p '*' * 20

last_customer = Customer.last
p last_customer

p '*' * 20

customers = Customer.find(3)
p customers

p '*' * 20

customers = Customer.where(state: 'Colorado')
customers.each do |state|
  puts state.inspect
end

p '*' * 20

customers = Customer.first(5)
customers.each do |cust|
  puts cust.inspect
end

p '*' * 20

customers = Customer.order(:name)
customers.each do |cust|
  puts cust.inspect
end

p '*' * 20

customers = Customer.order(name: :desc)
customers.each do |cust|
  puts cust.inspect
end

p '*' * 20

customers = Item.all
customers.each do |cust|
  p cust
end

# p '*' * 20

# customers = Item.exists?(['name LIKE ?', "boot"])
# customers.each do |cust|
#   p cust
# end

p '*' * 20

customers = Order.all
customers.each do |cust|
  p cust
end

p '*' * 20

customers = Order.first(5)
customers.each do |cust|
  p cust
end

p '*' * 20

customers = Order.last(5)
customers.each do |cust|
  p cust
end

p '*' * 20

customers = Customer.pluck(:name, :email)
customers.each do |cust|
  p cust
end

p '*' * 20

customers = Customer.pluck(:id, :name, :address)
customers.each do |cust|
  p cust
end

p '*' * 20

customers = Customer.count
  p customers

p '*' * 20

customers = Order.sum(:amount)
 p customers.to_s.to_f

p '*' * 20