class NationFacade
	def self.get_members(nation)
		NationService.get_members(nation)
	end

	def self.total_members(nation)
		get_members(nation).length
	end

	def self.first_twenty_five(nation)
		get_members(nation)[0..24].map do |member|
			Bender.new(member)
		end
	end
end
