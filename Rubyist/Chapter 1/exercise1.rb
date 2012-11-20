puts "Reading Celsius temperature value from data file..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file temp2.out ..."
fh = File.new("temp2.out", "w")
fh.puts "The number is #{fahrenheit}."
fh.close