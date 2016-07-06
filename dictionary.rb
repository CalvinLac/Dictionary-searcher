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
		puts @main_dictionary
	end

end

d = DictionaryUI.new 





