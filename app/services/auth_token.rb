class AuthToken < ApplicationService
  def initialize(user)
    @user = user
  end

  attr_reader :user

  def call
    JwtToken.issue_token(user_id: user.id, user_token_id: user.user_tokens.last.id)
  end
end
