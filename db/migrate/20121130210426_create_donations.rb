class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.donor_id :donor
      t.cause_id :cause
      t.float :amount
      t.bool :paid_out

      t.timestamps
    end
  end
end
