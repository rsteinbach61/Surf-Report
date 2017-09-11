class SurfReport::List_beaches


	def list
		#binding.pry
		SurfReport::Scraper.new.scraping
		
		puts "1: Venice"
		puts "2: Malibu"
		puts "Pick a beach"

	end
end