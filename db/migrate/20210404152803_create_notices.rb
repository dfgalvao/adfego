class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.text :title
      t.text :subtitle
      t.text :body_of_matter
      t.date :publication

      t.timestamps
    end
  end
end
