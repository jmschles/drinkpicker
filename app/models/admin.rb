# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  session_token   :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Admin < ActiveRecord::Base
  attr_accessible :password, :username

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def verify_password(password_attempt)
    BCrypt::Password.new(self.password_digest) == password_attempt
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
  end
end
