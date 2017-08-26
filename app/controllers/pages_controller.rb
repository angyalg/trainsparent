class PagesController < ApplicationController
  def home
  end

  def memory
    @politicans = Politician.all
    @politicans = @politicans.shuffle

    @cards = []
    @politicans.each do |p|
      @cards << p.name
      @cards << p.party
    end
    @cards = @cards[0..15]

    @cards.shuffle!
  end
end
