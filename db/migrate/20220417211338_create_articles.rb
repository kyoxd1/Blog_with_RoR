class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :status
      t.datetime :deleteDate

      t.timestamps
    end
  end
end
