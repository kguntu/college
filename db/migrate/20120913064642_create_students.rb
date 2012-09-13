class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.references :department
      t.timestamps
    end
    add_index(:students,[:department_id])
  end
end
