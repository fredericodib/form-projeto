class AddDataToHuman < ActiveRecord::Migration[5.1]
  def change
    add_column :humen, :q1, :string
    add_column :humen, :q2, :string
    add_column :humen, :q3, :string
    add_column :humen, :q4, :string
  end
end
