array1 []

array1 << ["AG","AG1",70,70,1,30,3.5]
array1 << ["V","V001",20,10,1,15]
array1 << ["A","A001",10,5,0,14]
array1 << ["K","K001",30,35,1,20]

array2 []

array2 << ["AG","AG001",100,100,1,50,6]
array2 << ["V","V002",20,30,1,20]
array2 << ["K","K002",50,50,1,30]

ag1 = array1[0]
array1.shift
array1.each do |item|
	case item[0]
	when "V"
		item[3] *= 2 if item[4] = 1
	when "A"
		item[2] *= 1.5 if item[4] = 1
	when "K"
		item[2] && item[3] *=3 if item[4] = 1
	end

ag2 = array2[0]
array2.shift
	case item[0]
	when "V"
		item[3] *= 2 if item[4] = 1
	when "K"
		item[2] && item[3] *=3 if item[4] = 1
	end

count_1 = array1.size
count_2 = array2.size

nth_child_1 = 0
nth_child_2 = 0

while count_1 == 0 || count_2 == 0 do
	if array1[nth_child_1] > array2[nth_child_2] && array1[nth_child_2] > array2[nth_child_1]
		count_2 -= 1
		array1[nth_child_1] - 20
		array1[nth_child_2] - 20
	elsif array1[nth_child_1] < array2[nth_child_2] && array1[nth_child_2] < array2[nth_child_1]
		count_1 -= 1
		array2[nth_child_1] - 20
		array2[nth_child_2] - 20
	else
	 	if array1[nth_child_3] > array2[nth_child_3] 
	 		count_2 -= 1
	 		array1[nth_child_1] - 20
			array1[nth_child_2] - 20
	 	else 
	 		count_1 -= 1
	 		array2[nth_child_1] - 20
			array2[nth_child_2] - 20
		end
	end
end