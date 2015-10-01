class User < ActiveRecord::Base
  has_many :tweets
  has_secure_password

  validates :first_name, :last_name, :email, :password, presence: true

  def full_name(user)
    full_name = user.first_name + ' ' + user.last_name
  end
end
