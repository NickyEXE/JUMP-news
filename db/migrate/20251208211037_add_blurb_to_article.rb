class AddBlurbToArticle < ActiveRecord::Migration[8.1]
  def change
    add_column :articles, :blurb, :text
  end
end
