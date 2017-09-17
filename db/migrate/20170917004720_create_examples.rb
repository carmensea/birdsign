class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
