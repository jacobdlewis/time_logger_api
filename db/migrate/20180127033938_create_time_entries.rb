class CreateTimeEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :time_entries do |t|
      t.string :area
      t.integer :business_mileage
      t.string :comment
      t.datetime :date
      t.decimal :hours
      t.integer :personal_mileage
      t.references :project, foreign_key: true
      t.references :activity, foreign_key: true
    end
  end
end
