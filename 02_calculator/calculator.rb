def add (number_one, number_two)
	number_one + number_two
end

def subtract(number_one, number_two)
	number_one - number_two
end

def sum array
	sum = 0
	array.each{|n| sum += n}
	sum
end

def multiply *all
	total = 1;
	all.each{ |n| total *= n}
	total
end

def power(base, exponent)
	base**exponent
end

def factorial(number)
	product = 1
	(1..number).each{ |n| product *= n }
	product
end