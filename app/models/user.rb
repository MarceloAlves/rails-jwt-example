class User < ApplicationRecord
  has_secure_password

  def to_token_payload
    {
      sub: self.id
    }
  end
end
