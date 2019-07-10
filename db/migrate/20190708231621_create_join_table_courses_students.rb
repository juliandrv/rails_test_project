class CreateJoinTableCoursesStudents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :students do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true
    end
  end
end
