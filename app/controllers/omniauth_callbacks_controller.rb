class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
      @user = User.from_omniauth(request.env["omniauth.auth"])
      if @user.persisted?
        sign_in_and_redirect @user, :event => :authentication
        flash[:notice] = 'Usuario criado com sucesso'
      else
        redirect_to new_user_registration_url
      end
    end
 
    def failure
      redirect_to root_path
      flash[:notice] = 'Invalid credentials'
    end
end