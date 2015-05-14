class CreateTuitionStatuses < ActiveRecord::Migration
  def change
    create_table :tuition_statuses do |t|
      t.string :status
      t.timestamps null: false
    end
  end
end
