phrase = Proc.new do |word|
	p word.upcase.reverse.gsub(/[AEIOU]/, ' lol ')
end

giorgia = ['My', 'name', 'is', 'Giorgia']

p giorgia.each(&phrase)



def all_together_now_the_beatles(count, chorus, count2, chorus2)
	count.call
	chorus.call
	count2.call
	chorus2.call
end

count = Proc.new { [*1..4].each{|num| p num} }
chorus = Proc.new { puts 'can I have a little more' }
count2 = Proc.new { [*5..10].each{|num| p num} }
chorus2 = Proc.new { puts 'I love u' }

all_together_now_the_beatles(count, chorus, count2, chorus2)