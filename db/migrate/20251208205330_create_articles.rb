class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :byline
      t.text :content
      t.string :fake_created_at

      t.timestamps
    end
  end
end
