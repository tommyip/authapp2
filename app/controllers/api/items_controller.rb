module Api
  class ItemsController < ApplicationController
    before_action :authenticate_user!

    def index
      render json: { status: 'ok' }
    end
  end
end
