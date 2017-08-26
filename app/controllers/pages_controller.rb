class PagesController < ApplicationController
  def home
  end

  def memory
    @politicans = Politician.all.sample(8)
    @politicans = @politicans.shuffle

    @cards = []
    @politicans.each do |p|
      @cards << [p.picture, p.name]
      @cards << [p.picture, p.party]
    end
    @cards.shuffle!
  end
end
