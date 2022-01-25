class Api::V1::ListsController < ApplicationController
    skip_before_action :ensure_anonymous_cookie
    before_action :check_api_token



    def get_list
        @list = List.find(params[:id])
        render json: @list, status: 200
    end
    
    private 

    def check_api_token
        if params[:api_token] != ENV['API_TOKEN']
            render json: {error: 'Invalid API token'}, status: 401
        end
    end
end
