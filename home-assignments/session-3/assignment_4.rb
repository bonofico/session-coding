def dog_years (age)
	(age / 7).round
end

print "Please enter your name: "
name = gets.chomp
print "Please enter your age: "
age = gets.to_i

if age > 130
	raise "There is no man older than 130"
else 
	puts "Hi #{name} your age is #{dog_years(age)} in dog years"
end
