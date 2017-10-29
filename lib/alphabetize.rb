
def alphabetize(arr)
	esperatano = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz ".split(//)
	sorted_arr = []
	longest = arr.max_by(&:length).length
	i = longest 
	while i > 0
		sorted_arr = arr.sort_by do |phrase| 
			if phrase[i - 1] != nil
				esperatano.index(phrase[i - 1])
			else
				0
			end
		end
		i -= 1
		arr = sorted_arr
	end
	sorted_arr
end	



