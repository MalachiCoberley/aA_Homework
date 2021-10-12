class User < ApplicationRecord
  attr_reader :password

  before_validation :ensure_session_token
  
  validates :username, :session_token, presence: true
  validates :password_digest, presence: {message: "Password can't be blank"}
  validates :password, length: { in: 8..22 }, allow_nil: true

  

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user && user.is_valid_password?(password)
      return user
    else
      nil
    end
  end

  def self.generate_session_token

  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def is_valid_password(password)
    password_object = BCrypt::Password.new(self.password_digest)
    password_object.is_password?(password)
  end

end
