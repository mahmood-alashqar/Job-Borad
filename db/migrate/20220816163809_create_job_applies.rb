class CreateJobApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applies do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :describtion
      t.binary :attachment
      t.string :experiance
      t.timestamps
    end
  end
end
