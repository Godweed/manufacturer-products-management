# app/models/spree/image_decorator.rb

Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    mini: '75x75#',
    small: '132x132#', # images on related products
    product: '315x315#', #image on collection page
    large: '620x620#' # light box image
  }

  attachment_definitions[:attachment][:default_style] = "large"
end
