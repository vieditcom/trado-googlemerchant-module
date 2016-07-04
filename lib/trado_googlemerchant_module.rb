module TradoGooglemerchantModule
end

require 'trado_googlemerchant_module/engine'
require 'trado_googlemerchant_module/version'
require 'trado_googlemerchant_module/active_record'

ActiveRecord::Base.send(:include, TradoGooglemerchantModule::ActiveRecord)