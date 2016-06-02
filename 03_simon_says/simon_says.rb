def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, times = 2)
	new_phrase = phrase
	(1...times).each{ |time| new_phrase += " #{phrase}" }
	new_phrase
end

def start_of_word(phrase, number)
	phrase[0...number]
end

def first_word(phrase)
	phrase.split[0]
end

def titleize(phrase)
	small = ["this", "that", "for", "and", "with", "a", "of", "but", "by", "over", "the"]
	phrase.capitalize!
	words = phrase.split.each{ |word| word.capitalize! unless small.include? word }.join(" ")
end