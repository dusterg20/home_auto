module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id]   = user.id
    session[:user_role] = user.role
  end

  # Returns the current logged-in user (if any).
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def current_user_role_superuser
    if session[:user_role] == "superuser"
      @current_user_role_superuser = "superuser"
    end
  end

  def current_user_roll_user
    if session[:user_role] == "user"
      @current_user_roll_user = "user"
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Returns true if the user has role of superuser, false otherwise.
  def user_roll_superuser?
    !current_user_role_superuser.nil?
  end

   # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
