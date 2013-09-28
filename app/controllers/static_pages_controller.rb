class StaticPagesController < ApplicationController
  def welcome
  		@companies = Company.all
  end

  def pro
  	
  end
end
