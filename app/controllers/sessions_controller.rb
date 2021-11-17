class SessionsController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token(user.id)
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: "Login Attempt Unsuccessful"}
        end
    end
    
    def autologin
        if session_user
            render json: {user: UserSerializer.new(session_user)}
        end
    end

end