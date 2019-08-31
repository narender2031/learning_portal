class Api::Users::LoginController < Api::BaseController
  def create
    user = Api::Users::AuthenticationService.call(user_params)
    if user.errors.any?
      render json: user.errors.full_messages
    else
      token = AuthToken.call(user)
      response = Api::UserPresenter.new(User.last, token).to_h
      render json: response
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
