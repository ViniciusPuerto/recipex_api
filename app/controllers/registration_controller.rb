class RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      @user = User.new(sign_up_params)
  
      @user.save
      render_resource(@user)
    end
  
    private
  
    def sign_up_params
      params.permit(
        :name,
        :email,
        :password,
      )
    end
  end