class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.Integer :id
      t.String :type

      t.timestamps null: false
    end
  end
end
