class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :subjectName
      t.string :site
      t.string :category

      t.timestamps null:false
    end
  end
end
