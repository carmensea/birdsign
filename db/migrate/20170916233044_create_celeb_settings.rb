class CreateCelebSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :celeb_settings do |t|
      t.integer :default_charity
      t.integer :default_charity_percent
      t.boolean :show_charity_percent
      t.string :default_specifications
      t.boolean :dont_bother_me
      t.integer :celeb_id

      t.timestamps
    end
  end
end
