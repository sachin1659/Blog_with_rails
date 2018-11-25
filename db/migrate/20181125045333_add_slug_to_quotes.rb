class AddSlugToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :slug, :string
    add_index :quotes, :slug, unique: true
  end
end
