module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      (link_to "Dashboard", dashboard_path ) +
      "<li>".html_safe +
      (link_to "Logout", destroy_user_session_path, method: :delete) +
      "<li>".html_safe
    else  
      link_to "Login", new_user_session_path
    end
  end

  def copyright_generator
    RamDevViewTool::Renderer.copyright 'Rubicks Academy', 'All rights reserved.'
  end

  def check_user 
    if current_user.meta != nil 
      "Hello, #{current_user.meta.name}" 
    else  
      "Hello, Instructor"
    end
  end

end

