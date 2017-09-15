class SurfReport::List_beaches


	def list
		choice = nil
		while choice != 'EXIT'
			puts ""
			puts "Pick a beach to get today's surf report from Surfline.com or type EXIT to leave."
			puts""

			SurfReport::Beach.all.each_with_index do |beach, index|
				puts "#{index + 1}: #{beach.name}"
			end
			
			choice = gets.strip.upcase # make sure EXIT is uppercase to end the while loop
			if choice != "EXIT"
				index = choice.to_i - 1
				region = SurfReport::Beach.all[index].url
				#binding.pry
				SurfReport::Build_report.new.build_report(region) # call #build_report passing new URL
			end	
			
			#system("open http://www.surfline.com/surf-forecasts/southern-california/north-santa-barbara-county_2963/")
		end
	end
end