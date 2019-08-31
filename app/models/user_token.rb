class UserToken < ApplicationRecord
  validates :user_id, presence: true
  validates :expire_at, presence: true
  validates :issue_at, presence: true
  validates :status, presence: true
  validates :token_type, presence: true

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
