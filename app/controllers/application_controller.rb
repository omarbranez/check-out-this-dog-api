class ApplicationController < ActionController::API

    def encode_token(id)
        JWT.encode({user_id: id}, ENV["JWT_KEY"])
    end

    def user_token
        request.headers["Authorization"]
    end

    def decode_token
        JWT.decode(user_token, ENV["JWT_KEY"])
    end

    def logged_in_user
        User.find_by_id(decode_token[0]["user_id"])
    end

end
