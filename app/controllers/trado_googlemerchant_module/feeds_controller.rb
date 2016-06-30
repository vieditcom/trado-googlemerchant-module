class TradoGooglemerchantModule::FeedsController < ApplicationController
    skip_before_action :authenticate_user!

    def rss
        set_products
        render 'feeds/rss', layout: 'rss'
    end

    def xml
        set_products
        render 'feeds/xml', layout: 'xml'
    end

    private

    def set_products
        @products ||= Product.active.published
    end
end