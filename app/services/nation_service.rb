class NationService
	def self.get_members(nation)
	  response = conn.get("/api/v1/characters?affiliation=#{nation}")
	   json = JSON.parse(response.body, symbolize_names: true)
	end
	def self.conn
	  Faraday.new(url: 'https://last-airbender-api.herokuapp.com') do |faraday|

	    faraday.adapter Faraday.default_adapter
	  end
	end
end
