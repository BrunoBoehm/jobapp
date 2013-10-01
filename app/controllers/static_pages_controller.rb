class StaticPagesController < ApplicationController
  def welcome
  		@companies = Company.all
  		@map = Address.all.to_gmaps4rails
  end

  def pro
  	
  end
end
