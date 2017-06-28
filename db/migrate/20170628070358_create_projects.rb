class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :active, default: true
      t.references :client, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
