class InitialSchemea < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.text :content
      t.boolean :published
      t.integer :user_id
      t.timestamps
    end

    create_table :users do |t|
      t.string :username
      t.text :password 
      t.timestamps
    end 

    create_table :images do |t|
      t.text :image_path
      t.string :content_type
      t.string :file_type
      t.integer :height
      t.integer :width
      t.string :image_type
      t.string :image_type_id
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
      t.integer :tagged
      t.timestamps
    end

    create_table :achievements do |t|
      t.string :name 
      t.string :description
      t.string :amount
      t.string :parent_id
    end 

    create_table :comments do |t|
      t.text :content
      t.integer :likes
      t.integer :dislikes
      t.integer :post_id 
      t.integer :parent_id
      t.integer :user_id
      t.timestamps
    end

    create_join_table :posts, :tags
    create_join_table :users, :achievements do |t|
      t.index :user_id
      t.index :achievement_id
      t.timestamps
    end 
  end
end
