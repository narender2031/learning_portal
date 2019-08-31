class Api::Users::RegisterController < Api::BaseController
  def create
    user = Api::Users::CreateUser.call(user_params)
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
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
