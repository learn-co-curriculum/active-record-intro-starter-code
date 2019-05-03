class UpdateFundingRoundsTableName < ActiveRecord::Migration[5.0]
  def change
  	rename_table :funding_round, :funding_rounds
  end
end
