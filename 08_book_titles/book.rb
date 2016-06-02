class Book

	def title
		titleize(@title)
	end

	def title=(title)
		@title = titleize(title)
	end

	private
		def titleize(phrase)
			small = ["this", "in", "an", "that", "for", 
				"and", "with", "a", "of", "but", "by", "over", "the"]
			phrase.capitalize!
			words = phrase.split.each{
				|word| word.capitalize! unless small.include? word }.join(" ")
		end
end