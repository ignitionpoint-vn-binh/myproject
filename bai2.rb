array = [{"1":[1,2,3]}, {"2":[1,2]}, {"1":[3,4]}]

new_hash = {}	
array.each do |item|	
	if new_hash[item.keys[0]].nil?	
	new_hash[item.keys[0]] = item.values[0]  
	else
	new_hash[item.keys[0]] += item.values[0]
	end
end
new_array = []
new_hash.each do |k, v|
	new_array << {"#{k}": v.uniq}
end

print(new_array)


