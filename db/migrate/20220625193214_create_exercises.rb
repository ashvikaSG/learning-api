class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :title
      t.integer :duration
      t.integer :number_of_questions
      t.integer :highest_score
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
