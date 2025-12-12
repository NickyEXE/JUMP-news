module ApplicationHelper
  def process_article_content(content)
    # Replace asset image references with proper asset_path URLs
    content.gsub(/src="\/assets\/([^"]+)"/) do |match|
      image_name = $1
      %Q(src="#{asset_path(image_name)}")
    end
  end

  def get_asset_path(image_name)
    #image name is like '/assets/tomei.jpg' or "https://example.com/image.png"
    return image_name unless image_name.start_with?("/assets/")
    image_name = image_name.sub("/assets/", "")
    ActionController::Base.helpers.asset_path(image_name)
  end

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
