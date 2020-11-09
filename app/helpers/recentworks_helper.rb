module RecentworksHelper

  def add_portfolio_items
  link_to  "Create new portfolio item", new_recentwork_path  if logged_in?(:site_admin) 
  end
end
