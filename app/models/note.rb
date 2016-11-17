class Note < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  cattr_accessor :current_user

  default_scope { where(user: current_user) }
end
