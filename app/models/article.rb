class Article < ApplicationRecord
    has_rich_text :content
    belongs_to :user
    has_many :category_articles
    has_many :categories, through: :category_articles

    attr_accessor :category_elements

    def save_categories
        #category_elements 1,2,3
        #Change this in array 1,2,3 => [1,2,3]
        # categories_array = category_elements.split(",")
        #Foreach array
        return category_articles.destroy_all if category_elements.nil? || category_elements.empty?

        category_articles.where.not(category_id: category_elements).destroy_all

        category_elements.each do |category_id|
            #Created Category_articles
           CategoryArticle.find_or_create_by(article: self, category_id: category_id) 
        end
    end
    
end
