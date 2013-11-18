class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :tenant_id
      t.integer :property_id
      t.date :lease_start
      t.date :lease_end

      t.timestamps
    end
  end
end
