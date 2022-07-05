class CreateStudentResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :student_responses do |t|
      t.string :answer
      t.string :answered
      t.string :marked_for_review
      t.integer :time_taken
      t.references :attempt, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
