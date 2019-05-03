class UpdateVentureCapitalistIdColumnInFundingRound < ActiveRecord::Migration[5.0]
  def change
  	rename_column :funding_round, :venture_capitalists_id, :venture_capitalist_id
  end
end
