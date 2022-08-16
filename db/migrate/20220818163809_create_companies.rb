class CreateCompanies < ActiveRecord::Migration[7.0]
    def change
      create_table :companies do |t|
        t.string :name
        t.string :location
        t.string :employees_number
        t.string :branches

        t.timestamps
      end
    end
  end
  