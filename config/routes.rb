TradoGooglemerchantModule::Engine.routes.draw do
    %w( xml rss ).each do |feed_type|
        get 'feed', to: "trado_googlemerchant_module/feeds##{feed_type}", format: feed_type
    end
end