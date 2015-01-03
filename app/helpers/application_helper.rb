module ApplicationHelper
	def twitter_link(twitter_text)
		link_to 'Twitter', "http://twitter.com/share?text=#{URI.escape(twitter_text)}", 
		'class' => 'twitter-share-button'
	end	

	def twitter_text(noun, business)
		"I just founded #{business.name} for #{noun.name}! Check it out! @derivativestartups #derivativestartups"
	end	
end
