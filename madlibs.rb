# This is increment 4

class Madlibs
	def self.prompt
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

		puts "Choose one of the following:"
		puts		
		
		transport_array = [
				"in a boat", 
				"on a bus", 
				"inside a whale", 
				"clinging under a speeding truck"
			]

		iterator = 0

		while iterator < 4
			puts (iterator + 1).to_s + ". " + transport_array[iterator]
			iterator += 1
		end

		iterator = 0

		puts
		puts "by typing the number of your choice:"
		transport_input = gets.strip

		while iterator + 1 != transport_input.to_i
			iterator += 1
		end

		transport = transport_array[iterator]

		madlibs = {
			"noun" => noun, 
			"adjective" => adjective, 
			"verb" => verb, 
			"adverb" => adverb, 
			"object" => object,
			"transport" => transport
		}
	end
end

madlibs = Madlibs.prompt

template_array = [
			"While #{madlibs['verb']}ing #{madlibs['transport']}, the #{madlibs['noun']} turned #{madlibs['adjective']}.",
			"The #{madlibs['adjective']} #{madlibs['noun']} suddenly and #{madlibs['adverb']} had to #{madlibs['verb']} the #{madlibs['object']} #{madlibs['transport']}.", 
			"The #{madlibs['noun']} jumped over the #{madlibs['object']}.", 
			"The #{madlibs['noun']} says 'let's #{madlibs['adverb']} #{madlibs['verb']} to the #{madlibs['adjective']} #{madlibs['object']}!'"
		]

class SentenceTemplate
	def initialize(template_array)
		@template_array = template_array
		insert
	end

	def insert
		@template_array.each {|x| puts x}
	end
end

final_output = SentenceTemplate.new(template_array)
puts final_output
