class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :description
      t.string :correct_option
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :solution
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
