class VentureCapitalist < ActiveRecord::Base
	has_many :funding_rounds
	has_many :startups, through: :funding_rounds
end