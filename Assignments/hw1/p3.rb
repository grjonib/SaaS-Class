def combine_anagrams(words)
	
	wordHash = Hash.new([])
	
	words.each do |word| wordHash[word.downcase.scan(/\w/).sort.join] += [word] end
	
	output = []
	wordHash.each_value do |subarray| output += [subarray] end
	
	return output
end