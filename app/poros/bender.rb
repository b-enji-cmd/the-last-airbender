class Bender
	attr_reader :name, :allies, :enemies, :affiliations
	def initialize(args)
		@name = args[:name]
		@allies = args[:allies]
		@enemies = args[:enemies]
		@affiliations = args[:affiliation]
	end
end
