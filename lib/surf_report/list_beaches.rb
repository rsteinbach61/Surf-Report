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
					SurfReport::Build_report.new.build_report('south-los-angeles_2951')
					
				when "2"
					SurfReport::Build_report.new.build_report('south-los-angeles_2142')
			end
		end
	end
end