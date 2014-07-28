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

cust_three = Customer.find(3)
p cust_three

p '*' * 20

colorado = Customer.where(state: 'Colorado')
colorado.each do |state|
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

customers = Customer.order(:name :desc)
customers.each do |cust|
  puts cust.inspect
end