module Users
  class SessionsController < Devise::SessionsController
    def create
      self.resource = resource_class.find_for_database_authentication(email: params[:user][:email])

      if resource.nil?
        set_flash_message!(:alert, :not_found_in_database)
        redirect_to new_user_session_path
      else
        super
      end
    end

    protected

    def auth_options
      { scope: resource_name, recall: "#{controller_path}#new" }
    end
  end
end
