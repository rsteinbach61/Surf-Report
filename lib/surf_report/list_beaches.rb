class SurfReport::List_beaches


	def list
		#binding.pry
		#doc = SurfReport::Scraper.new.scraping
		choice = nil
		while choice != 'EXIT'
			puts "1: South Los Angeles Forecast"
			puts "2: North Los Angeles Forecast"
			puts "Pick a beach or type EXIT to leave."
			choice = gets.strip.upcase

			case choice
				when "1"
					doc = SurfReport::Scraper.new.scraping('south-los-angeles_2951')
					region = doc.css(".forecast-outlook p strong")[1].text
					outlook = doc.css(".forecast-outlook p")[1].css("strong")[0].text
					day = doc.css(".forecast-outlook p")[1].css("strong")[1].text
					outlook_text = doc.css(".forecast-outlook p")[1].text.gsub(day, '').gsub(outlook, '')
					puts region
					puts outlook
					puts day	
					puts outlook_text


				when "2"
					doc = SurfReport::Scraper.new.scraping('north-los-angeles_2142')	
					region = doc.css(".forecast-outlook p strong")[1].text
					outlook = doc.css(".forecast-outlook p")[1].css("strong")[0].text
					day = doc.css(".forecast-outlook p")[1].css("strong")[1].text
					outlook_text = doc.css(".forecast-outlook p")[1].text.gsub(day, '').gsub(outlook, '')
					
					puts region
					puts outlook
					puts day	
					puts outlook_text

			end
		end
	end
end