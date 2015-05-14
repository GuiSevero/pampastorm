class CreateTuitionStatuses < ActiveRecord::Migration
  def change
    create_table :tuition_statuses do |t|
      t.Integer :id
      t.String :status

      t.timestamps null: false
    end
  end
end
