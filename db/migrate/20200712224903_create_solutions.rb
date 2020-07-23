class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.text :answer
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
