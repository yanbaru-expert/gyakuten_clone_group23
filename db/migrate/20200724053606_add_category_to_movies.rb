class AddCategoryToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :category, :string
  end
end
