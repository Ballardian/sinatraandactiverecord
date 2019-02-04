class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Copy-paste your code from previous exercise
  # validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5 }
  # validates :url, presence: true, format: { with: /\A(http|https)/ }
  # validates :user, presence: true

  default_scope { order(votes: :desc) }
end
