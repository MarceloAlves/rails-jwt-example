class HomeController < ApplicationController
  before_action :authenticate_user

  def index
    render json: {
      user: current_user,
      token_encoded: request.headers["Authorization"].delete("Bearer "),
    }
  end
end
