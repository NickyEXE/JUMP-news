module ApplicationHelper
  def process_article_content(content)
    # Replace asset image references with proper asset_path URLs
    content.gsub(/src="\/assets\/([^"]+)"/) do |match|
      image_name = $1
      %Q(src="#{asset_path(image_name)}")
    end
  end
end
