require 'jwt'

class Auth

  def self.create_token(user_object, exp = 24.hours.from_now)
    payload = {user: JSON.parse(user_object.to_json), exp: exp.to_i}
    token = JWT.encode(payload, Rails.application.secrets.secret_key_base, "HS256")
  end

  def self.decode_token(token)
    decode = JWT.decode(token, Rails.application.secrets.secret_key_base, true, {algorith: "HS256"})
  end

end
