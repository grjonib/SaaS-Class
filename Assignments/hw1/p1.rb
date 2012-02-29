def palindrome?(string)
	string.downcase.gsub!(/\W/,"")
	puts string
	return string == string.reverse
end