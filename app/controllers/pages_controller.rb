class PagesController < ApplicationController
  def home
  end

  def memory
    @politicans = Politician.all
    @politicans = @politicans.shuffle

    @cards = []
    @politicans.each do |p|
      @cards << [p.photo_url, p.name]
      @cards << [p.photo_url, p.party]
    end
    @cards.shuffle!
  end
end
