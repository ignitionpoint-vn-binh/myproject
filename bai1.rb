puts "Enter n number"
n = gets.chomp
puts "n number: #{n}"

array = []
n.to_i.times do |_|
	puts "Array element"
	array << gets.chomp.to_i
end

new_hash = {}
array.each do |i|
	if new_hash[i]. nil?
		new_hash[i] = 1 
	else
		new_hash[i] += 1 
	end
end

new_array = []
new_hash.each do |k, v|
	new_array << {"#{k}": v}
end

print new_array