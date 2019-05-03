class FundingRound < ActiveRecord::Base
	belongs_to :startup
	belongs_to :venture_capitalist
end