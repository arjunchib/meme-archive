module SessionsHelper
  def logged_in?
    !session[:user_id].nil?
  end

  def logged_in_user
    redirect_to new_session_path unless logged_in?
  end
end
