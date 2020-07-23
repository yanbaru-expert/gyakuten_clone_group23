class AddAnswerToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :answer, :text
    add_reference :solutions, :question,foreign_key: true
  end
end
