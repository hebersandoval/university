class ApplicationController < ActionController::Base

    before_action :require_user

    helper_method :current_user, :logged_in?
    
    def current_user
        # memoizing instance variable; perform query only if current_student doesn't exist
        @current_student ||= Student.find(session[:student_id]) if session[:student_id]
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:warning] = 'You must be logged in to perform that action'
            redirect_to login_path
        end
    end
end
