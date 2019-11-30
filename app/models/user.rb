class User < ApplicationRecord

  has_many :trekks, :dependent => :destroy
  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { without: /\s/ }
  validates :password, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.where("lower(email) = lower(?)", email.split).where(password: password).first

    if user
      return user
    else
      return nil
    end
  end

end
