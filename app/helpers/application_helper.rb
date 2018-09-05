module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      (link_to "Logout", destroy_user_session_path, method: :delete) +
      "<br>".html_safe +
      (link_to "Courses", course_path )
    else  
      link_to "Login", new_user_session_path
    end
  end

  def copyright_generator
    RamDevViewTool::Renderer.copyright 'Rubicks Academy', 'All rights reserved.'
  end
end


# Just in case I want users to register. Don't forget the () wrap around login link
# (link_to "Register", new_user_registration_path) + "<br>".html_safe +