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

		madlibs = {"noun" => noun, "adjective" => adjective, "verb" => verb, "adverb" => adverb, "object" => object}
	end
end

madlibs = Madlibs.prompt

template_array = [
			SentenceTemplate.new("The adjective noun suddenly and adverb had to verb the object.")
		]

class SentenceTemplate

	def initialize(template_string)
		insert
		puts "reached initialize"
	end

	def insert
		template_output = template_array.each.gsub(/noun/, madlibs)
		puts "reached insert"
	end

end


puts template_output.each


# class SentenceTemplates
# 	def template_01
# 		@template_01 = "Test Output"
# 	end 
# 	def self.output
# 		puts @template_01
# 	end
# end

# output = SentenceTemplates.new
# output.template_01.output

# #class SentenceTemplates
# #	def self.sentence_01
# #		@sentence_01 = ["The #{madlibs['adjective']} #{madlibs['noun']} suddenly and #{madlibs['adverb']} had to #{madlibs['verb']} the #{madlibs['object']}"
# #	end
# #	def insert
# #
# #	end
# #end



# # array = [
# # 	"The #{madlibs['adjective']} #{madlibs['noun']} suddenly and #{madlibs['adverb']} had to #{madlibs['verb']} the #{madlibs['object']}", 
# # 	"The #{madlibs['noun']} jumped over the #{madlibs['object']}", 
# # 	"The #{madlibs['noun']} says 'let's #{madlibs['adverb']} #{madlibs['verb']} to the #{madlibs['adjective']} #{madlibs['object']}!'"
# # ]

# # puts array.each { |x| puts x }

