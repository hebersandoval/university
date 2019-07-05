module ApplicationHelper
    
    def session_link
        if (!logged_in?)
            link_to('Login', login_path, class: "nav-link")
        else
            link_to('Log Out', logout_path, method: :delete, class: "nav-link")
        end
    end
end
