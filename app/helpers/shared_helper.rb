# frozen_string_literal: true

module SharedHelper
  def visitor_from
    if session[:where_from]
      greeting = "Thank you for visiting from #{session[:where_from]}"
      content_tag(:p, greeting, class: 'where_from')
      #  "<p>Thank you for visiting from #{session[:where_from]}</p>".html_safe
    end
  end

  def user_functionality
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) + (link_to 'Login', new_user_session_path)

    else
      link_to 'Logout', destroy_user_session_path, method: :delete

    end
  end

  def keywords
    'vmwhoami, freelancer, developer, rails 6, ruby, Vitalie Melnic, vmwhoiam'
  end

  def page_title(title = 'Vitalie Melnic website')
    title
  end
end
