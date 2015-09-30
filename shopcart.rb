class ShoppingCart

  def initialize
    @items = []
  end

  def add_items(item)
    @items.push(item)
  end

  def total_price
    total = 0

    @items.each do |item|
      total += item.price
    end  

    if @items.length > 5
      total*0.95
    else     
      total
    end  

    puts "Your total today is #{total} euros."  
  end

  def show_items
    @items.each do |item|
      puts item.name
    end
  end
end

class Item

  attr_reader :name

  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    @price
  end
end

class Houseware < Item

  def price
    if @price > 100
      @price*0.95
    else
      @price
    end     
  end
end


class Fruit < Item

  def price
    time = Time.new

    if time.wday >= 1 && time.wday <= 5
      @price
    else
      @price*0.9
    end 
       
  end  
end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 200)
anchovies = Item.new("Anchovies", 2)
cart = ShoppingCart.new
cart.add_items(banana)
cart.add_items(rice)
cart.add_items(vacuum_cleaner)
cart.add_items(orange_juice)
cart.add_items(anchovies)
cart.add_items(anchovies)
cart.show_items

cart.total_price
