module ArticleMailerHelper
  def email_image_url(image_path)
    # For emails: return full URL for external images, or asset URL for local assets
    return image_path if image_path =~ /\A#{URI::DEFAULT_PARSER.make_regexp(['http', 'https'])}\z/
    
    # Handle /assets/ prefix
    if image_path.start_with?("/assets/")
      image_path = image_path.sub("/assets/", "")
    end
    
    # Generate absolute URL with host
    root_url.chomp('/') + asset_path(image_path)
  end
end
