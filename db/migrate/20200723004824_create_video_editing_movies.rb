class CreateVideoEditingMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :video_editing_movies do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
