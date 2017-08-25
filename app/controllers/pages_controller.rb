class PagesController < ApplicationController
  def home
  end

  def memory
    @politicans = Politician.all

    @cards = []
    @politicans.each do |p|
      @cards << p.name
      @cards << p.party
    end

    @cards.shuffle!
  end
end
