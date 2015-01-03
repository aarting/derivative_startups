class StartupsController < ApplicationController
  def blank_for_blank
  	
  end

  def generated
  	@business = Business.find(Business.pluck(:id).sample)
  	@noun = Noun.find(Noun.pluck(:id).sample)
  end

end
