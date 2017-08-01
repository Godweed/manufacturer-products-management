Paperclip.interpolates :slug do |attachment, style|
  attachment.instance.viewable.slug
end
Paperclip.interpolates :sku do |attachment, style|
  attachment.instance.viewable.sku
end

if ENV['RAILS_ENV'] == 'production'
  Spree::Image.attachment_definitions[:attachment][:path] = "/:class/:style/:sku/:slug-:basename.:extension"
  Spree::ProductImport.data_file_definitions[:data_file][:path] = "/spree/product_imports/:basename_:timestamp.:extension"
end