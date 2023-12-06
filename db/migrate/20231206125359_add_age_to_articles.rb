class AddAgeToArticles < ActiveRecord::Migration[7.1]
  def up
    add_column :articles, :age, :integer
  end

  def down
    remove_column :articles, :age
  end
end
