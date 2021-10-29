class ApplicationController < ActionController::API
    # include ExceptionHandler

    def encode_token(id)
        JWT.encode({user_id: id}, ENV["JWT_SECRET"])
    end

    def user_token
        request.headers["Authorization"]
    end

    def decode_token
        JWT.decode(user_token, ENV["JWT_SECRET"])
    end

    def session_user
        # binding.pry
        User.find_by_id(decode_token[0]["user_id"])
    end

end
