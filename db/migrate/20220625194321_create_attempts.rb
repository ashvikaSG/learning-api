class CreateAttempts < ActiveRecord::Migration[7.0]
  def change
    create_table :attempts do |t|
      t.datetime :day
      t.references :student, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
