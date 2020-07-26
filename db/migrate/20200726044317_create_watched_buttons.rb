class CreateWatchedButtons < ActiveRecord::Migration[6.0]
  def change
    create_table :watched_buttons do |t|
      t.string :user_email
      t.string :movie_title

      t.timestamps
    end
  end
end

