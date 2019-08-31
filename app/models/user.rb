class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :user_tokens
  after_create :genrate_user_token

  def genrate_user_token
    user_tokens.create(issue_at: DateTime.current, expire_at: DateTime.current + 6, status: 'live', token_type: 'jwt-token')
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
