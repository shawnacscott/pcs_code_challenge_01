
# This is increment 3

puts "Please enter a noun or noun phrase:"
noun = gets.strip.downcase

puts "Please enter an adjective or adjective phrase:"
adjective = gets.strip.downcase

puts "Please enter a present tense verb or verb phrase:"
verb = gets.strip.downcase

puts "Please enter an adverb or adverb phrase:"
adverb = gets.strip.downcase

puts "Please enter an object or object phrase:"
object = gets.strip.downcase

madlibs = {"noun" => noun, "adjective" => adjective, "verb" => verb, "adverb" => adverb, "object" => object}

puts madlibs

array = ["The #{madlibs['adjective']} #{madlibs['noun']} suddenly and #{madlibs['adverb']} had to #{madlibs['verb']} the #{madlibs['object']}", "The #{madlibs['noun']} jumped over the #{madlibs['object']}", "The #{madlibs['noun']} says 'let's #{madlibs['adverb']} #{madlibs['verb']} to the #{madlibs['adjective']} #{madlibs['object']}!'"]

puts array[0]
puts array[1]
puts array[2]

