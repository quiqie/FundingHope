class FixDonationColumnCause < ActiveRecord::Migration
  def up
  	rename_column :donations, :cause_id, :product_id
  end

  def down
  	rename_column :donations, :product_id, :cause_id
  end
end
