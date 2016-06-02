def translate(phrase)
	words = phrase.split
	translated = ""
	words.each{ |word| translated += pig_latin(word) + " " }
	translated.split.join(" ")
end

def pig_latin(phrase)
	prefix = ""
	vowels = ['a', 'e', 'i', 'o']
	phrase += "ay" if vowels.include? phrase[0]
	unless vowels.include? phrase[0]
		phrase.split(//).each do |l|
			if vowels.include? l
				if (phrase[-1] == 'q' && l == 'u')
					phrase.slice!(0)
					phrase += l
				else
					break
				end
			end
			phrase.slice!(0)
			phrase += l
		end
		phrase += "ay"
	end
	phrase
end