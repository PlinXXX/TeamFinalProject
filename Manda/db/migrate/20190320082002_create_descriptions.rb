class CreateDescriptions < ActiveRecord::Migration[5.2]
	def change
		create_table :descriptions do |t|
			t.belongs_to :solution, index: { unique: true }, foreign_key: true
			t.belongs_to :question, index: true, foreign_key: true
			t.string :description
			t.timestamps
		end
	end
end
