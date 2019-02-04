class User < ActiveRecord::Base
  has_many :posts

  # TODO: Copy-paste your code from previous exercise
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  before_validation :strip_email
  # TODO: Add some callbacks

  def strip_email
    self.email = email.strip unless email.nil?
  end
end
