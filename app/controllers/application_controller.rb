class ApplicationController < ActionController::API
    # include ExceptionHandler
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

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
        User.find_by_id(decode_token[0]["user_id"])
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages.to_sentence}
    end
end
