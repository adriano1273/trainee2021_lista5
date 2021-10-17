class Api::V1::AdminsController < ApplicationController

    acts_as_token_authentication_handler_for Admin, only: [:show, :logout]

    def login
        admin = Admin.find_by!(email: params[:email])
        if admin.valid_password?(params[:password])
            render json: admin, status: :ok
        else
            head(:unauthorized)
        end
    rescue StandardError
        head(:not_found)
    end

    def show
        render json: current_admin, status: :ok
    end

    def logout

        current_admin.update!(authentication_token: nil)

        render json: {message: "Você deslogou com sucesso"}, status: :ok

    rescue StandardError
        head(:bad_request)
    end
end
