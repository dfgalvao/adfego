class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.string :code
      t.string :title
      t.text :description
      t.string :schooling
      t.integer :quantity
      t.float :remuneration
      t.text :benefit
      t.string :workload
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
