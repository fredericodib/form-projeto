class AddData2ToHuman < ActiveRecord::Migration[5.1]
  def change
    add_column :humen, :q5, :string
    add_column :humen, :q6, :string
  end
end
