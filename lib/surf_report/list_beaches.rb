class SurfReport::List_beaches


	def list
		#binding.pry
		#doc = SurfReport::Scraper.new.scraping
		choice = nil
		while choice != 'EXIT'
			puts "1: South Los Angeles Forecast"
			puts "2: Los Angeles Forecast"
			puts "Pick a beach or type EXIT to leave."
			choice = gets.strip.upcase

			case choice
				when "1"
				doc = SurfReport::Scraper.new.scraping('south-los-angeles_2951')	
				puts doc.css(".forecast-outlook p")[1].text

				when "2"
					doc = SurfReport::Scraper.new.scraping('north-los-angeles_2142')	
				puts doc.css(".forecast-outlook p")[1].text
			end
		end
	end
end