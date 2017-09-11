class SurfReport::List_beaches


	def list
		#binding.pry
		SurfReport::Scraper.new.scraping
		
		puts "1: Venice"
		puts "2: Malibu"
		puts "Pick a beach"
		choice = gets.strip

		case choice
			when "1"
			puts "Venice beach report"

			when "2"
				puts "Malibu beach report"
		end

	end
end