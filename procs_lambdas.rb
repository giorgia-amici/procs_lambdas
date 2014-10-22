# Ex 1

phrase = Proc.new do |word|
	p word.upcase.reverse.gsub(/[AEIOU]/, ' lol ')
end

giorgia = ['My', 'name', 'is', 'Giorgia']

p giorgia.each(&phrase)


#------------------------------------------------------------------#

# Ex 2
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


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#Ex 3
say_hello_proc = Proc.new { puts 'Hello' }
say_hello_lambda = lambda { puts 'Hello' }


say_hello_proc.call
say_hello_lambda.call

#-----------------------------------------------------

#Ex 4: who wins in those cases between Batman and Superman?


def round1
	return 'Batman'
	return 'Superman'
end

#in the case above the output will be 'Batman' cos the function stops to be executed
#after the first return. The second return (i.e.return 'Superman')
#is also called dead code because it will never be executed

#-----------------------------------------------------

#Ex 5

def round2
	lambda { return 'Batman' }.call
	return 'Superman'
end

#in this case  the winner will be Superman because the return is contained in the lambda

#-----------------------------------------------------

#Ex 6

def round3
	Proc.new { return 'Batman' }.call
	return 'Superman'
end

#in this case the winner will be Batman and the second return will never be executed





































