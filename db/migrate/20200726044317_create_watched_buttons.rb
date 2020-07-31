class CreateWatchedButtons < ActiveRecord::Migration[6.0]
  def change
    create_table :watched_buttons do |t|
      references :user, null: false, foreign_key: true
      references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end