class SurfReport::Build_report

	def build_report(region)
		doc = SurfReport::Scraper.new.scraping(region)
					region = doc.css(".forecast-outlook p strong")[1].text
					outlook = doc.css(".forecast-outlook p")[1].css("strong")[0].text
					day = doc.css(".forecast-outlook p")[1].css("strong")[1].text
					outlook_text = doc.css(".forecast-outlook p")[1].text.gsub(day, '').gsub(outlook, '')
					puts ""
					puts region
					puts ""
					puts "#{day}"	
					puts outlook_text
					puts ""

	end
end