def palindrome?(string)
	string = string.downcase.gsub(/\W/,"")
	return string == string.reverse
end

def count_words(string)
	words = string.downcase.split(/\b/)
	freq = Hash.new(0)
	words.each do |string| freq[string] += 1 if string =~ /\w+/  end
	return freq
end