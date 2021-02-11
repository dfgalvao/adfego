class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :manager
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
