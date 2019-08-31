# frozen_string_literal: true

require 'jwt'

module JwtToken
  def self.issue_token(payload)
    payload['exp'] = 6.months.from_now.to_i # Set expiration to 6 months.
    JWT.encode(payload, ENV['DEVISE_JWT_SECRET_KEY'])
  end

  def self.valid?(token)
    JWT.decode(token, ENV['DEVISE_JWT_SECRET_KEY'])
  rescue StandardError
    false
  end
end
