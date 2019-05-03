class CreateVentureCapitalist < ActiveRecord::Migration[5.0]
  def change
  	create_table :venture_capitalists do |t|
  		t.string :name
  		t.integer :total_worth
  	end
  end
end
