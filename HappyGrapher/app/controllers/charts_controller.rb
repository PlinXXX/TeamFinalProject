class ChartsController < ApplicationController

  def sporters_by_age
  	@sporters = Sporter.all
    result = @sporters.group(:age).count
    render json: [{name: 'Count', data: result}]
  end
end