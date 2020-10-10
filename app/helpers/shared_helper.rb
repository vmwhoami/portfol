module SharedHelper

  def visitor_from
    if session[:where_from] 
     "<p>Thank you for visiting from #{session[:where_from]}</p>".html_safe
    end  
  end

  def user_functionality
    if current_user.is_a?(User)  
      link_to  "Logout", destroy_user_session_path, method: :delete  
     else  
      (link_to  "Register", new_user_session_path ) && (link_to  "Login", new_user_session_path)
   
    end  
  end
   
  def keywords
    "vmwhoami, freelancer, developer, rails 6, ruby, Vitalie Melnic, vmwhoiam"
  end
  

end