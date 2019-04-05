class StatisticsController < ApplicationController
  include StatisticsHelper
  def index
  	@sporters = Sporter.all
  end
end
