class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def after_sign_in_path_for(user)
        root_path
    end
    def after_sign_up_path_for(user)
      root_path
    end
    def after_sign_out_path_for(resource_or_scope)
      new_registration_path(resource_name)
    end

end
