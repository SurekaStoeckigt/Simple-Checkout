class Checkout
  attr_reader :items

    def initialize
      @items = [
            {name: 'bananas', price: '1'},
            {name: 'milk', price: '2'}
              ]
    end

    def check_price(item)
     price = item[:price]
    end

    def add_to_list(item)
      items.push(item)
    end

    def find_price(name)
      items.select{|price| items[:name] == price}
    end

    def scan_items(items_to_scan)
      items_to_scan = @items
      checkout_list = []
      items_to_scan.each do |item_and_price|
        checkout_list << item_and_price
      end
      checkout_list
    end

    def price_from_scanned(checkout_list)
      checkout_list = @items
      price = 0
      checkout_list.each do |value|
      price += value[:price].to_i
        end
      price
      end

    def checkout_items(checkout_list)
      checkout_list = @items
      format = ""
      checkout_list.each do |value|
        format+= "#{value[:name]} #{value[:price]}"
      end
      format
    end

    end
