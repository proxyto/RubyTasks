def grayscale_histogram(image)
	histogram=Array.new 256, 0

	row_index, col_index=0,0

	while row_index < image.length
		col_index = 0

		while col_index < image[row_index].length
			pixel_value = image[row_index][col_index]
			histogram[pixel_value] +=1
			col_index +=1
		end

		row_index +=1
	end

	 histogram

end

puts grayscale_histogram([[1,2,3],[3,4,5]])
