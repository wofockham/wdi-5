module ApplicationHelper
  def smartnav
    if @current_user.present?
      "<li>" +
       link_to('Logout ' + @current_user.username, login_path, :data => {:method => :delete, :confirm => 'Really logout?'}) +
       "</li>"
    else
      "<li><%= link_to('Sign up', new_user_path) %></li>
      <li><%= link_to('Sign in', login_path) %></li>"
    end
  end
end
