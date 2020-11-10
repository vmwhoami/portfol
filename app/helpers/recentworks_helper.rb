module RecentworksHelper

  def add_portfolio_items
   link_to  "Create new portfolio item >", new_recentwork_path,class: "new_item"  if logged_in?(:site_admin) 
  end

  def edit_item(item)
    link_to  "Edit", edit_recentwork_path(item), class: "links__container mt-5 links__text"  if logged_in?(:site_admin) 
  end
 
  def delete_item(item)
  end

end
