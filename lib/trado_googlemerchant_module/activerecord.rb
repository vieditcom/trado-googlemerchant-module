module TradoGooglemerchantModule
    module ActiveRecord
        extend ActiveSupport::Concern

        module ClassMethods
            def has_googlemerchant
                attr_accessible :googlemerchant_brand, :googlemerchant_category

                validates :googlemerchant_category, :googlemerchant_brand, presence: true
            end
        end
    end
end