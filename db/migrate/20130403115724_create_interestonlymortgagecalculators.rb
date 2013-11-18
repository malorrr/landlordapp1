class CreateInterestonlymortgagecalculators < ActiveRecord::Migration
  def change
    create_table :interestonlymortgagecalculators do |t|
      t.integer :amount
      t.integer :rate
      t.integer :stress

      t.timestamps
    end
  end
end
