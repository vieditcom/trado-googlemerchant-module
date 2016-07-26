xml.channel do
    xml.title "#{Store.settings.name} Google Merchant Product RSS Feed"
    xml.description "#{Store.settings.name} Google Merchant Product RSS Feed"
    xml.link root_url
    xml.language 'en'

    for product in @products
        next unless (product.googlemerchant_brand.present? && product.googlemerchant_category.present?)
        xml.item do
            xml.tag!("g:id", product.sku)
            xml.tag!("g:title", product.name)
            xml.tag!("g:description", product.meta_description)
            xml.tag!("g:link", category_product_url(product.category, product))
            xml.tag!("g:image_link", product.attachments.first.file.large.url)
            xml.tag!("g:condition", "new")
            xml.tag!("g:availability", product.in_stock? ? "in stock" : "out of stock")
            xml.tag!("g:price", "#{product.first_available_sku.price} #{Store.settings.currency_code}")

            xml.tag!("g:mpn", product.part_number)
            xml.tag!("g:brand", product.googlemerchant_brand)
            xml.tag!("g:google_product_category", product.googlemerchant_category)

        end
    end
end
