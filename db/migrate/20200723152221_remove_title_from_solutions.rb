class RemoveTitleFromSolutions < ActiveRecord::Migration[6.0]
  def change
    remove_column :solutions, :title, :string
    remove_column :solutions, :detail, :text 
  end
end
