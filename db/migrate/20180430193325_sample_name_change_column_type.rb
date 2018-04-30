class SampleNameChangeColumnType < ActiveRecord::Migration[5.2]
 	def change
    	change_column(:shops, :distance, :integer)
	end
end
