class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :url, null: false
      t.string :company_name, null:false
      t.text :description, null: false
      t.datetime :job_opened_at, null:false
      t.string :title, null: false
      t.references :job_site, null: false, foreign_key:true
      t.references :user, null: false, foreign_key:true
      t.timestamps
    end
  end
end
