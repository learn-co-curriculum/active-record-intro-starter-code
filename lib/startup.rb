class Startup < ActiveRecord::Base
	has_many :funding_rounds
	has_many :venture_capitalists, through: :funding_rounds

	def pivot(domain, name)
		self.update(domain:domain, name:name)
	end

end