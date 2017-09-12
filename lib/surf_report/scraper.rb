class SurfReport::Scraper
	def scraping(region)
		
		doc = Nokogiri::HTML(open("http://www.surfline.com/surf-forecasts/southern-california/#{region}"))
	end
end