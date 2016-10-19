module TradoGooglemerchantModule
    module Generators
        class InstallGenerator < Rails::Generators::Base
            source_root File.expand_path("../../templates", __FILE__)

            def copy_migration
                unless googlemerchant_migration_already_exists?
                    timestamp_number = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
                    copy_file "migration.rb", "db/migrate/#{timestamp_number}_add_googlemerchant_attributes.rb"
                end
            end

            def setup_routes
                route_content = <<-CONTENT

    mount TradoGooglemerchantModule::Engine => '/google_merchant'
                CONTENT
                inject_into_file "config/routes.rb", route_content, after: "Trado::Application.routes.draw do"
            end

            def assign_model_concerns
                googlemerchant_content = <<-CONTENT

    has_googlemerchant
                CONTENT

                inject_into_file "app/models/product.rb", googlemerchant_content, after: "class Product < ActiveRecord::Base"
            end

            private

            def googlemerchant_migration_already_exists?
                Dir.glob("#{File.join(destination_root, File.join("db", "migrate"))}/[0-9]*_*.rb").grep(/\d+_add_googlemerchant_attributes.rb$/).first
            end
        end
    end
end