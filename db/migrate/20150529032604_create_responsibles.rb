class CreateResponsibles < ActiveRecord::Migration
  def change
    create_table :responsibles do |t|
      t.string :name
      t.integer :student_id
      t.string :occupation
      t.string :mobile_number
      t.string :residencial_number
      t.string :comercial_number
      t.string :relation_type

      t.timestamps null: false
    end
  end
end
