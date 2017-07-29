# app/models/spree/image_decorator.rb

Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    mini: '75x75#',
    small: '132x132#', # images on related products
    product: '315x315#', #image on collection page
    large: '620x620#' # light box image
  }

  attachment_definitions[:attachment][:url] = "/:class/:style/:sku/:slug-:basename.:extension"
  attachment_definitions[:attachment][:path] = "/:class/:style/:sku/:slug-:basename.:extension"

  Paperclip.interpolates :slug do |attachment, style|
    attachment.instance.viewable.slug
  end
  Paperclip.interpolates :sku do |attachment, style|
    attachment.instance.viewable.sku
  end
end
