class SurfReport::List_beaches


	def list
		choice = nil
		while choice != 'EXIT'
			puts ""
			puts "Pick a beach to get today's surf report from Surfline.com or type EXIT to leave."
			puts""
			menu_scrape = SurfReport::Scraper.new.scraping_region
			
			menu = menu_scrape.css("#subnavSubRegionList a")
			num = 1
			menu.each do |beach|  
				puts "#{num}: #{beach.text}" #generate the menu of beaches num used to output list numbers
				num += 1
			end
			choice = gets.strip.upcase # make sure EXIT is uppercase to end the while loop
			if choice != "EXIT"
				index = choice.to_i #convert choice to an int so it can be used in as an index below

				reg = menu.children[index - 1].text.downcase.gsub(' ','-') #reformat text so it can be used in URLs
				reg << '_'

				reg << menu[index - 1]['href'].gsub(/[^0-9]/, "") # get beach URL and pull id number out and build URL to pass
				
				SurfReport::Build_report.new.build_report(reg) # call #build_report passing new URL
			end	

		end
	end
end