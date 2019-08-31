class Api::Users::AuthenticationService < ApplicationService
  include ActiveModel::Model

  def initialize(user_params)
    @email = user_params['email']
    @password = user_params['password']
  end

  attr_reader :email, :password

  validates :email, presence: true
  validates :password, presence: true

  def call
    return self unless valid?

    user = User.find_for_authentication(email: email)
    if user.blank?
      errors.add(:base, :not_found, message: 'E-mail and Password does not match')
      return self
    end

    unless user&.valid_password?(@password)
      user.errors.add(:base, :not_found, message: 'E-mail and Password does not match')
    end
    user || self
  end
end
