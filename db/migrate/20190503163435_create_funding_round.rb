class CreateFundingRound < ActiveRecord::Migration[5.0]
  def change
  	create_table :funding_round do |t|
  		t.integer :startup_id
  		t.integer :venture_capitalists_id
  		t.string :funding_type
  		t.integer :investment
  	end
  end
end
