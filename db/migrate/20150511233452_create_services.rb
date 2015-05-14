class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :service_type
      t.integer :tuition_id
      t.float :value
      t.timestamps null: false
    end
  end
end
