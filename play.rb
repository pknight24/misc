puts "Hello World"
def add(a, b)
	return a + b
end

def fact(n)
	return n == 0 ? 1 : n*fact(n-1)
end
puts fact(5)



records = {
	OKComputer: 3,
	WORRY: 2

}

#records.each do |key, value| puts key end

def bottles(n=99)
	unless n  == 1
		puts "#{n} bottles of beer on the wall, #{n}, bottles of beer.\n
		Take one down, pass it around, #{n-1} bottles of beer on the wall."
		bottles(n-1)
	else
		puts "1 bottles of beer on the wall, 1 bottle of beer. \n
		Take it down, pass it around, no more bottles of beer on the wall,"
	end
end

#disembowler
print "enter a string to be disembowled: "
word = gets.chomp
puts "#{word.delete(' aeiou')}\n#{word.delete('^aeiou')}"

