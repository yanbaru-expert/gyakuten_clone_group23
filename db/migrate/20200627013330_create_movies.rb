class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :category
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
