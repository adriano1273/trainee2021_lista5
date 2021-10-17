class ApplicationController < ActionController::API
    def authentication_failure
        render json: {message: "voce não esta logado!"}, status: :unauthorized
    end
end
