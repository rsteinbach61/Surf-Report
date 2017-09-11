class SurfReport::List_beaches


	def list
		#binding.pry
		SurfReport::Scraper.new.scraping
		choice = nil
		while choice != 'EXIT'
			puts "1: Venice"
			puts "2: Malibu"
			puts "Pick a beach or type EXIT to leave."
			choice = gets.strip.upcase

			case choice
				when "1"
				puts "Venice beach report"

				when "2"
					puts "Malibu beach report"
			end
		end
	end
end