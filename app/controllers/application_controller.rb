class ApplicationController < ActionController::Base
    helper_method :current_user, :logged?

    protected
    def current_user
        @current_user = User.find(session[:user_id]) if session[:user_id]
    end

    def logged?
        session[:user_id] ? true : false
    end
end
