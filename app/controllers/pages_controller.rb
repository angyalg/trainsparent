class PagesController < ApplicationController
  def home
  end

  def memory
    @guess = {}
    politicians = Politician.all.sample(8)
    politicians.each do |p|
      @guess[p.photo_url] = [p.name, p.party]
    end
    @guess
  end
end
