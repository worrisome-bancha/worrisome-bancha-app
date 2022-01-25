class ApplicationController < ActionController::Base
    before_action :ensure_anonymous_cookie

    private

    def ensure_anonymous_cookie
        if !cookies[:uid]
            cookies[:uid] = {
                value: SecureRandom.uuid,
                expires: 1.year.from_now,
                secure: true,
                httponly: true,
              }
        end
    end
end
