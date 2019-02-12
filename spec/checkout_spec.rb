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
