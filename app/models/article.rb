class Article < ApplicationRecord
    has_rich_text :content
    belongs_to :user
    has_many :category_articles
    has_many :categories, through: :category_articles
end
