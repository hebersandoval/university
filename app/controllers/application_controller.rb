class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    
    def current_user
        # memoizing instance variable; perform query only if current_student doesn't exist
        @current_student ||= Student.find(session[:student_id]) if session[:student_id]
    end

    def logged_in?
        !!current_user
    end
end
