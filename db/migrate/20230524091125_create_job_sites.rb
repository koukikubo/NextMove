class CreateJobSites < ActiveRecord::Migration[6.0]
  def change
    create_table :job_sites do |t|
      t.string :url, null:false
      t.string :company_name, null: false
      t.references :site_type, null: false, foreign_key: true
      t.timestamps
    end
  end
end
