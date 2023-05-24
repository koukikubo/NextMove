class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.integer :preference_id, null: false
      t.string  :city_name, null: false
      t.text    :keyword,   null: false
      t.integer :min_salary, null: false
      t.integer :max_salary, null: false
      t.integer :employment_type, null: false
      t.timestamps
    end
  end
end
