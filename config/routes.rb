TradoGooglemerchantModule::Engine.routes.draw do
    get 'rss_feed', to: 'google_merchant/rss_feed#index', as: 'google_merchant_rss_feed'
end