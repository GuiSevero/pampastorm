class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :enrollment_date
      t.date :birth_date
      t.string :address
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
