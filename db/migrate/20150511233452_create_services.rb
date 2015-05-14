class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.Integer :service_type
      t.Integer :tuition_id
      t.Float :value

      t.timestamps null: false
    end
  end
end
