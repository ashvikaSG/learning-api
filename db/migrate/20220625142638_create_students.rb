class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.date :dob
      t.string :profile_pic
      t.integer :login_progress
      t.references :grade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
