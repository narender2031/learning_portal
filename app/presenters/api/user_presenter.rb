class Api::UserPresenter
  def initialize(user, token)
    @token = token
    @user = user
  end

  attr_accessor :user, :token

  def to_h
    {
      first_name: user.first_name,
      last_name: user.last_name
    }.deep_merge(token: token)
  end
end
