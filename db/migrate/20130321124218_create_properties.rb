class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address_line_1
      t.string :city
      t.string :county
      t.string :image
      t.integer :rent

      t.timestamps
    end
  end
end
