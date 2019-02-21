require 'checkout'

describe Checkout do

  it 'observes the price of an item' do
    checkout = Checkout.new
    new_item = {name: 'chocolate', price: 2}
    expect(checkout.check_price(new_item)).to eq(2)
  end

it 'scans items at check out' do
checkout = Checkout.new
list = [
      {name: 'bananas', price: '1'},
      {name: 'milk', price: '2'}
        ]
expect(checkout.scan_items(list)).to eq checkout.items
end

it 'returns total for all scanned items' do
  checkout = Checkout.new
  list = [
        {name: 'bananas', price: '1'},
        {name: 'milk', price: '2'}
          ]
    #original = checkout.items
    total = checkout.price_from_scanned(checkout.items)
  expect(checkout.price_from_scanned(list)).to eq total
end

it 'formats prices individually' do
  checkout = Checkout.new
  list = [
        {name: 'bananas', price: '1'},
        {name: 'milk', price: '2'}
          ]
  format = ""
  list.each do |value|
  format += "#{value[:name]} #{value[:price]}"
  end
  expect(checkout.checkout_items(list)).to eq format
end

end
# 
# require 'checkout'
# require 'item'
#
# describe Checkout do
#   it 'can scan items' do
#     checkout = Checkout.new
#     expect(checkout).to respond_to(:scan).with(1).argument
#   end
#
#   it "can give a total" do
#     checkout = Checkout.new
#     checkout.total
#   end
#
#     it "can calculate the total from the sum of scanned item prices" do
#       item1 = Item.new(1)
#       item2 = Item.new(4.50)
#       checkout = Checkout.new
#
#       checkout.scan(item1)
#       checkout.scan(item2)
#
#       expect(checkout.total).to eq(item1.price + item2.price)
#     end
#
#     it "can display the total in £xx.xx format" do
#       item1 = Item.new(1)
#       item2 = Item.new(4.50)
#       checkout = Checkout.new
#
#       checkout.scan(item1)
#       checkout.scan(item2)
#
#       expect(checkout.display_total).to eq("£5.50")
#     end
# end
