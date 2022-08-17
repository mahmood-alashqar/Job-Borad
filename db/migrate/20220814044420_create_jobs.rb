class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :description
      t.boolean :applied
      t.string :level
      t.boolean :available
      t.string :belongs_to

      t.timestamps
    end
  end
end
