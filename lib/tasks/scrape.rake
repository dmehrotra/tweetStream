namespace :scraper  do
	task :scrape => :environment do
		desc "Run Twitter Scraper"
	  		TweetStream::Client.new.track('Ferguson') do |status|
	  			if status.geo.present? 
	  				Tweet.create(text: status.text, lat: status.geo.coordinates[0], long:status.geo.coordinates[1])
	  			else
	  				puts "#{status.text}"
	  			end
	  		end
	end
end