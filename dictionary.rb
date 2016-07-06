class DictionaryLoader

	def initialize
	end

	def loading(text_dictionary)
		word_bank = []
		File.readlines(text_dictionary).each do |words|
			word_bank.push words.strip
		end
		return word_bank
	end
end





class DictionaryUI

	def initialize
		@dictionary_loader = DictionaryLoader.new
		@main_dictionary = @dictionary_loader.loading('5desk.txt')
	end


	def exact_match (search,dictionary)
		result = []

		dictionary.each do |word|
			result << word if word.match(/^#{search}$/)
 		end
 		if result.size == 0
 			puts "There was no matches found"
 		end
 		result
 	end

	def part_match (search,dictionary)
		result = []

		dictionary.each do |word|
			result << word if word.match(/^.*#{search}.*$/)
 		end
 		if result.size == 0
 			puts "There was no matches found"
 		end
 		result
 	end

	def begins_match (search,dictionary)
		result = []

		dictionary.each do |word|
			result << word if word.match(/^#{search}.*$/)
 		end
 		if result.size == 0
 			puts "There was no matches found"
 		end
 		result
 	end

 	def ends_match (search,dictionary)
		result = []

		dictionary.each do |word|
			result << word if word.match(/^.*#{search}$/)
 		end
 		if result.size == 0
 			puts "There was no matches found"
 		end
 		result
 	end


 	def what_mode
 		puts "Pick your mode"
 		puts "1 for exact"
 		puts "2 for partial" 
 		puts "3 for begins-with"
 		puts "4 for ends-with"
 		mode = gets.chomp
 		return mode
 	end



 	def displayer
 		mode = what_mode.to_i
 		puts "Please enter your search word or string to search"
 		searcher = gets.chomp 
 		dictionary= @main_dictionary

 		if mode ==1
 		puts "You are searching for an exact match to '#{searcher}'" 
 		puts exact_match(searcher,dictionary)

 		elsif mode ==2
 		puts "You are searching for words that include '#{searcher}'"
 		puts part_match(searcher,dictionary)

 		elsif mode ==3
 		puts "You are searching for words that begin with '#{searcher}'"
 		puts begins_match(searcher,dictionary)

 		elsif mode ==4
 		puts "You are searching for words that end with '#{searcher}'"
 		puts ends_match(searcher,dictionary)
 	end

 			
 	end


end








d = DictionaryUI.new 
d.displayer




