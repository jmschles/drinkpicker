module SessionsHelper

  def current_admin
    return nil unless session[:session_token]
    @current_admin ||= Admin.find_by_session_token(session[:session_token])
  end

  def login(admin)
    admin.reset_session_token!
    session[:session_token] = admin.session_token
  end

  def logout
    current_admin.session_token = SecureRandom.urlsafe_base64(8)
    session[:session_token] = nil
  end
end
