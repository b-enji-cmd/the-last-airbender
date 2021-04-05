class Bender
	attr_reader :name, :allies, :enemies, :affiliations
	def initialize(args)
		@name = args[:name]
		args[:allies].empty? ? @allies = ["None"] : @allies = args[:allies]
		args[:enemies].empty? ? @enemies = ["None"] : @enemies = args[:enemies]
		@affiliations = args[:affiliation	]
	end
end
