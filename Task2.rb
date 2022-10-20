puts "Enter a"
a = gets.chomp.to_f
puts "Enter b"
b = gets.chomp.to_f
puts "Enter c"
c = gets.chomp.to_f

puts "Enter start_x"
start_x = gets.chomp.to_f
puts "Enter end_x"
end_x = gets.chomp.to_f
puts "Enter dx"
dx = gets.chomp.to_f

results = {}

(start_x..end_x).step(dx).each do |x|
  if a < 0 && x != 0
    results[x] = a*x**2 + b**2*x
  elsif a > 0 && x == 0
    results[x] = x - (a/(x - c))
  else
    results[x] = 1 + x / c
  end
end


if !(a.truncate || b.truncate) && (b.truncate || c.truncate) != 0
  results.each do |key, value|
    print key, " : ", value, "\n"
  end
else
  results.each do |key, value|
    print key, " : ", value.to_i, "\n"
  end
end
