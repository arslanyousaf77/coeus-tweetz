class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
        # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
    end

    # rescue_from CanCan::AccessDenied do |exception|
    #     respond_to do |format|
    #       format.json { head :forbidden, content_type: 'text/html' }
    #       format.html { redirect_to main_app.root_url, notice: exception.message }
    #       format.js   { head :forbidden, content_type: 'text/html' }
    #     end
    # end
end
