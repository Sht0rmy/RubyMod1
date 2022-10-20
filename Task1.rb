class Product

  attr_accessor :id, :name, :upc, :manufacturer, :price, :shelf_life, :amount

  def initialize(id, name, upc, manufacturer, price, shelf_life, amount)
    @id = id
    @name = name
    @upc = upc
    @manufacturer = manufacturer
    @price = price
    @shelf_life = shelf_life
    @amount = amount
  end

  def to_s
    @id.to_s + "_" + @name.to_s + "_" + @upc.to_s + "_" + @manufacturer.to_s + "_" + @price.to_s +
  "_" + @shelf_life.to_s + "_" + @amount.to_s
  end
end

x1 = Product.new(1, "Knife", 666666, "KnifeManufacturer", 60, 5, 10)
x2 = Product.new(2, "Plate", 123456, "PlateManufacturer", 20, 3, 22)
x3 = Product.new(3, "Knife", 654321, "AnotherKnifeManufacturer", 18, 2, 100)
x4 = Product.new(4, "Kettle", 132457, "KettleManufacturer", 50, 1, 13)
x = [x1,x2,x3,x4]

print "Enter Name:\n"
a_name = gets.chomp.to_s
print "a) \n"
for i in 0..x.size-1 do
  if x[i].name == a_name
    puts x[i].to_s, "\n"
  end
end

print "Enter Name:\n"
b_name = gets.chomp.to_s
print "Enter price:\n"
b_price = gets.chomp.to_f
print "b) \n"
for i in 0..x.size-1 do
  if x[i].name == b_name
    if x[i].price < b_price
      puts x[i].to_s, "\n"
    end
  end
end

print "Enter Shelf Life:\n"
c_shelf_life = gets.chomp.to_f
print "c) \n"
for i in 0..x.size-1 do
  if x[i].shelf_life > c_shelf_life
    puts x[i].to_s, "\n"
  end
end
