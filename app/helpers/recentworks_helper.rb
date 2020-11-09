module RecentworksHelper

  def add_portfolio_items
   link_to  "Create new portfolio item >", new_recentwork_path,class: "new_item"  if logged_in?(:site_admin) 
  end
end
