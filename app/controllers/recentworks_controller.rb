class RecentworksController < ApplicationController

  def index
  @portfolios = Recentwork.all
  end
end
