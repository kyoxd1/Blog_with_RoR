class Article < ApplicationRecord
    has_rich_text :content
    belongs_to :user, class_name: "user", foreign_key: "user_id"
end
