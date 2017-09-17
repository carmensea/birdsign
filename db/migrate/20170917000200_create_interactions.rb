class CreateInteractions < ActiveRecord::Migration[5.1]
  def change
    create_table :interactions do |t|
      t.string :photo_url

      t.timestamps
    end
  end
end
