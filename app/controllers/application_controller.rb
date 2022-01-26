class ApplicationController < ActionController::Base
  before_action :ensure_anonymous_cookie

  private

  def ensure_anonymous_cookie
    unless cookies[:uid]
      cookies[:uid] = {
        value: SecureRandom.uuid,
        expires: 1.year.from_now,
        httponly: true
      }
    end
  end
end
