class Api::Users::CreateUser < ApplicationService
  def initialize(params)
    @user_params = params
  end

  attr_reader :user_params

  def call
    user = User.new(user_params)
    user.save
    user
  end
end
