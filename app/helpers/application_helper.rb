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
end
