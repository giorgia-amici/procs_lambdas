phrase = Proc.new do |word|
	p word.upcase.reverse.gsub(/[AEIOU]/, ' lol ')
end

giorgia = ['vivo', 'sempre', 'insieme', 'ai', 'miei', 'capelli']

p giorgia.each(&phrase)