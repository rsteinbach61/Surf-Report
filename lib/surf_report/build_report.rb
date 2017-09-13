class SurfReport::Build_report

	def build_report(region)
		doc = SurfReport::Scraper.new.scraping(region)
					region = doc.css(".forecast-outlook p strong")[1].text
					outlook = doc.css(".forecast-outlook p")[1].css("strong")[0].text
					outlook_text = doc.css(".forecast-outlook p")[1].text.gsub(outlook, '')
					puts ""
					puts region
					puts ""
					puts "#{outlook}"	
					puts outlook_text
					puts ""
	end
end