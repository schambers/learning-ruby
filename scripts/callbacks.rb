
# Callback without arguments
def hello(name)
	puts "Hello #{name}"
	yield
	puts "Done saying hello to #{name}"
end

# Callback with arguments
def hello_again(name)
	puts "Hello Again, #{name}"
	yield("Alan", "Chambers")
	puts "Done with hello_again"
end

def insert_space
	puts "\n\n"
end

hello('Sean') { puts 'in callback' }

insert_space

hello_again('Sean') { |middleName, lastName| puts "#{middleName}, #{lastName}" }

insert_space

# Callback used in array iteration
animals = %w{ cat dog bird mouse }
animals.each {|animal| puts animal}



