class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest presence: {message: "Password can't be blank"}, lenght: { in: 8..22 }

  def self.find_by_credentials

  end

  def self.generate_session_token

  end

  def reset_session_token

  end

  def ensure_session_token

  end

  def password=

  end

end
