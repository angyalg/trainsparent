class PoliticiansController < ApplicationController
  def index
  @politicians = Politician.ids.sample(8)

  end



end
