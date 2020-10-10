module BlogsHelper
  def visitor_from
   if session[:where_from] 
    "<p>Thank you for visiting from #{session[:where_from]}</p>".html_safe
   end  
  end
end
