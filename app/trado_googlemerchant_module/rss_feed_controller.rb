class TradoGooglemerchantModule::RssFeedController < ApplicationController

    def index
        set_products
        render json: { @products }, status: 200
    end

    private

    def set_products
        @products ||= Product.active.published
    end
end