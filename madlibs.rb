
# This is increment 1

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

puts "The #{madlibs['adjective']} #{madlibs['noun']} suddenly and #{madlibs['adverb']} had to #{madlibs['verb']} the #{madlibs['object']}"

