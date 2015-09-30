class User < ActiveRecord::Base
  has_many :tweets

  def full_name(user)
    full_name = user.first_name + ' ' + user.last_name
  end
end
