class ApplicationController < ActionController::Base

  # session_helper.rbはモジュールなので、includeで読み込むこともできる。
  # include SessionsHelper

  # ビューファイルからも使えるようにヘルパーメソッドとして登録する
  helper_method :log_in, :log_out

  private

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
