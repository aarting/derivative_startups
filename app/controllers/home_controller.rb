class HomeController < ApplicationController
  def index
  	@business = Business.find(Business.pluck(:id).sample)
  	@noun = Noun.find(Noun.pluck(:id).sample)
  end
end
