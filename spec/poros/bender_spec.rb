require "rails_helper"

RSpec.describe Bender do
	describe "attributes" do
		it "should have attributes" do
				attributes = {
				:_id=>"5cf5679a915ecad153ab68ee",
				  :allies=>["Ozai"],
				  :enemies=>["Zuko"],
				  :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817",
				  :name=>"Bujing",
				  :affiliation=>"Fire Nation military"
			}
			bujing = Bender.new(attributes)

			expect(bujing.name).to eq "Bujing"
			expect(bujing.allies).to eq ["Ozai"]
			expect(bujing.enemies).to eq ["Zuko"]
			expect(bujing.affiliations).to eq "Fire Nation military"
			expect(bujing.image).to eq "https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817"
		end
	end
end
