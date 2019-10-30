class Api::V1::AuthController < ApplicationController
    def create
        token = request.headers["Authorization"]
        userId = JWT.decode(token, "essays")[0]["user"]
        user = User.find(userId)
        render json: {user: UserSerializer.new(user)}
    end

    def login
        user = User.find_by(name: params["auth"]["name"])
        if user && user.authenticate(params["auth"]["password"])
            token = JWT.encode({user: user.id}, "essays")
            render json: {user: UserSerializer.new(user), token: token}, status: :accepted
        else
            render json: {errors: 'Invalid username or password'}, status: :unauthorized
        end
    end
end