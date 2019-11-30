class User < ApplicationRecord

  has_many :trekks, :dependent => :destroy
  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { without: /\s/ }
  validates :password, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by("lower(email) = lower(?)", email.split).first
    authenticatedUser = user.authenticate(password)
    if authenticatedUser
      return user
    else
      return nil
    end
  end

end
