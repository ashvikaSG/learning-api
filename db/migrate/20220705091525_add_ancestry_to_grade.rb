class AddAncestryToGrade < ActiveRecord::Migration[7.0]
  def change
    add_column :grades, :ancestry, :string
    add_index :grades, :ancestry
  end
end
