# Class representing a product
class Product
  attr_accessor :name, :description, :price

  def initialize
    @name = ''
    @description = ''
    @price = 0
  end

  def to_s
    "Product: #{@name}, Description: #{@description}, Price: #{@price}"
  end
end

# Class representing Builder
class ProductBuilder
  def initialize
    @product = Product.new
  end

  def set_name(name)
    @product.name = name
    self
  end

  def set_description(description)
    @product.description = description
    self
  end

  def set_price(price)
    @product.price = price
    self
  end

  def build
    @product
  end
end

# Using Builder
builder = ProductBuilder.new
product = builder.set_name('Computer Mouse')
                 .set_description('A coordinate device for controlling the cursor and issuing various commands to the computer')
                 .set_price(52.99)
                 .build

puts product
