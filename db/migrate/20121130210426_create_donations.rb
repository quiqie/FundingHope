class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations, :force => true do |t|
      t.integer :donor_id
      t.integer :cause_id
      t.float :amount
      t.boolean :paid_out

      t.timestamps
    end
  end
end
