class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :description
      t.string :details

      t.timestamps
    end
  end
end