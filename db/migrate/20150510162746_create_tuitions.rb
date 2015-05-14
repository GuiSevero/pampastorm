class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.integer :customer_id
      t.date :due_date
      t.integer :status
      t.timestamps null: false
    end
  end
end
