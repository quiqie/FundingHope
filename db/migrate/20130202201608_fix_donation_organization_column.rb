class FixDonationOrganizationColumn < ActiveRecord::Migration
  def up
  	rename_column :donations, :donor_id, :organization_id
  end

  def down
  	rename_column :donations, :organization_id, :donor_id 
  end
end
