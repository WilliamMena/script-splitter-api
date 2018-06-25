class JsonWebToken
  class << self

    def encode(user_object, exp = 24.hours.from_now)
      payload = {user: JSON.parse(user_object.to_json), exp: exp.to_i}
      token = JWT.encode(payload, Rails.application.secrets.secret_key_base, "HS256")
    end

    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base, true, {algorith: "HS256"})[0]
      HashWithIndifferentAccess.new body
    rescue
     nil
    end

  end
end
