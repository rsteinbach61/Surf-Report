class SurfReport::Beach
	attr_accessor :name, :url, :report 
	@@all = []

	def initialize(name = nil, url = nil)
		@name = name
		@url = url
		@@all << self
	end

	def self.all
		@@all 
	end

	def self.new_beaches
		menu_scrape = SurfReport::Scraper.new.scraping_region
		menu = menu_scrape.css("#subnavSubRegionList a")
		
		menu.each_with_index do |beach, index|
			
			region = menu.children[index ].text.downcase.gsub(' ','-') #reformat text so it can be used in URLs
			region << '_'
			region << menu[index]['href'].gsub(/[^0-9]/, "") # get beach URL and pull id number out and build URL to pass
							
			self.new(beach.text, region)
		end

		SurfReport::List_beaches.new.list
	end



end