class User < ApplicationRecord
  has_many :ratings
  validates :email, uniqueness: true
  before_save :format_email # TODO: this should happen before the uniqueness check

  def format_email
    email.downcase!
  end
end
