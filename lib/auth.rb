require 'jwt'

class Auth

  def self.create_token(user_object)
    payload = {user: JSON.parse(user_object.to_json)}
    token = JWT.encode(payload, "Your Secrete phrase", "HS256")
  end

  def self.decode_token(token)
    decode = JWT.decode(token, "Your Secrete phrase", true, {algorith: "HS256"})
  end

end
