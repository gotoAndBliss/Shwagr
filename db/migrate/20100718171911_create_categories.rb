class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table  :posts do |t|
      t.boolean   :type
      t.string    :name
      t.string    :url
      t.text      :text
      t.string    :category_id
      t.integer   :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
