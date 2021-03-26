class CreatePreaches < ActiveRecord::Migration[5.2]
  def change
    create_table :preaches do |t|
      t.string :title
      t.text :subject
      t.date :publication
      t.string :status

      t.timestamps
    end
  end
end
