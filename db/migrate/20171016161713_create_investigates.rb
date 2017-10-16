class CreateInvestigates < ActiveRecord::Migration
  def change
    create_table :investigates do |t|
      t.text :customer_name
      t.text :date_of_flag
      t.text :transaction_amount
      t.text :notes
      t.text :customer_id_number
      t.text :open_or_closed

      t.timestamps
    end
  end
end
