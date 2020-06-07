class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: :devise_token_auth?

  def devise_token_auth?
    params[:controller].split('/')[0] == 'devise_token_auth'
  end
end
