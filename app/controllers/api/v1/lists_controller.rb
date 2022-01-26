class Api::V1::ListsController < ApplicationController
  skip_before_action :ensure_anonymous_cookie
  before_action :check_api_token

  def get_list
    @list = List.find(params[:id])
    render json: { list: @list, flag: ENV['FLAG'] }, status: 200
  end

  private

  def check_api_token
    render json: { error: 'Invalid API token' }, status: 401 if params[:api_token] != ENV['API_TOKEN']
  end
end
