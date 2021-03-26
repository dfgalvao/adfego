class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.text :body
      t.date :publication
      t.text :subject
      t.string :status
      t.references :preach, foreign_key: true

      t.timestamps
    end
  end
end
