class SurfReport::Scraper
	def scraping(region)

		doc = Nokogiri::HTML(open("http://www.surfline.com/surf-forecasts/southern-california/#{region}"))
	end

	def scraping_region
		menu = Nokogiri::HTML(open("http://www.surfline.com/surf-forecasts/southern-california/north-los-angeles_2142/"))
	end
end

#http://www.surfline.com/surf-forecasts/southern-california/north-santa-barbara-county_2963/