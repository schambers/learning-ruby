a = [1,'Sean',true]

a.each do |x|
	puts "Value: #{x}"
end

puts "Normal Array"
puts a


puts "\n\nTerse Array"
terse_array = %w{ sean aidan erin }

terse_array.each do |x|
	puts x.capitalize
end

puts "\n\n"
puts 'Hash'

hash_array = {
	'clarinet' 	=> 'woodwind',
	'saxophone' => 'brass',
	'violin' 		=> 'string',
	'trumpet' 	=> 'brass'
}

puts "#{hash_array['violin']}\n"
puts "#{hash_array['nothing']}"

puts "\n\nNew Empty Hash"
empty_hash = Hash.new(0)
puts empty_hash[0]
puts empty_hash[1]
