class Api::UserController < Api::BaseController
  def create
    user = Api::Users::CreateUser.call(user_params)
    render_response(user)
  end

  def authenticate
    user = Api::Users::AuthenticationService.call(auth_params)
    render_response(user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def auth_params
    params.require(:user).permit(:email, :password)
  end

  def render_response(user)
    if user.errors.any?
      render json: user.errors.full_messages
    else
      token = AuthToken.call(user)
      response = Api::UserPresenter.new(User.last, token).to_h
      render json: response
    end
  end
end
