class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.Integer :customer_id
      t.date :due_date
      t.Integer :status

      t.timestamps null: false
    end
  end
end
