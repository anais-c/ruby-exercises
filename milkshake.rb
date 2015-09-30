class MilkShake
  
  attr_reader :name
  def initialize(name)
  	@name = name
    @base_price = 3
    @ingredients = [ ]        
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end 

  def price_of_milkshake

  	#Let's establish what our counter should be before we start adding ingredients into the mix
  	@total_price_of_milkshake = @base_price

  	#Add each ingredients price to our total
  	@ingredients.each do |ingredient|
  	  @total_price_of_milkshake += ingredient.price
    end

    #return  our total price to whoever called for it
    @total_price_of_milkshake
  end
end


class Ingredient 

  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


class ShackShop

  def initialize
  	@milkshakes = [ ] 
  end

  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)
  end

  def all_checkout_milkshakes 
  	@milkshakes.each do |milkshake|
  		puts milkshake.name
  	end
  end

  def milkshakes_total_price
  	@total_price = 0
  	@milkshakes.each do |milkshake|
  		@total_price += milkshake.price_of_milkshake
  	end
  	puts @total_price
  end

end

nizars_milkshake = MilkShake.new("Nizar's milkshake")
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
puts nizars_milkshake.price_of_milkshake

anais_milkshake = MilkShake.new("Anais milskshake")
vanilla = Ingredient.new("Vanilla", 4)
pistachio = Ingredient.new("Pistachio", 3)
anais_milkshake.add_ingredient(vanilla)
anais_milkshake.add_ingredient(pistachio)
puts anais_milkshake.price_of_milkshake

checkout = ShackShop.new
checkout.add_milkshake(nizars_milkshake)
checkout.add_milkshake(anais_milkshake)
checkout.all_checkout_milkshakes
checkout.milkshakes_total_price