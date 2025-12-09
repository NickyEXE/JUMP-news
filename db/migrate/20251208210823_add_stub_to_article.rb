class AddStubToArticle < ActiveRecord::Migration[8.1]
  def change
    add_column :articles, :stub, :string
  end
end
