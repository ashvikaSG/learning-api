class AddAncestryToBoard < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :ancestry, :string
    add_index :boards, :ancestry
  end
end
