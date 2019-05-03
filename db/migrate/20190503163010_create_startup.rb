class CreateStartup < ActiveRecord::Migration[5.0]
  def change
  	create_table :startups do |t|
  		t.string :name
  		t.string :founder
  		t.string :domain
  	end
  end
end
