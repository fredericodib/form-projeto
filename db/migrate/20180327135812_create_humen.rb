class CreateHumen < ActiveRecord::Migration[5.1]
  def change
    create_table :humen do |t|
      t.string :name
      t.string :country
      t.boolean :knowledge
      t.boolean :skill

      t.timestamps
    end
  end
end
