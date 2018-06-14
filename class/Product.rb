class Product

  attr_accessor :name, :price, :currency

  def initialize(name, price, currency)
    @name = name
    @price = price
    @currency = currency
  end

  def self.format_price(price, currency)
    return price.to_s if currency.nil?
    case currency
    when 'dollar'
      "$#{price}"
    else
      "#{price}円"      
    end
  end

  def to_s
    "Product's name is #{name}. Price is #{Product.format_price(price, currency)}."
  end

end

class DVD < Product

  attr_accessor :play_time

  def initialize(name, price, currency, play_time)
    super(name, price, currency)
    @play_time = play_time
  end

  def to_s
    "#{super} Play_time is #{play_time} minutes."
  end

end 

sample_product = Product.new('SmartPhone', 25000, 'yen')
p sample_product.to_s

sample_dvd = DVD.new('StarWars1', 4800, 'dollar',120)
p sample_dvd.to_s