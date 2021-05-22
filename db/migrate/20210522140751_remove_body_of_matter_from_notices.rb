class RemoveBodyOfMatterFromNotices < ActiveRecord::Migration[5.2]
  def change
    remove_column :notices, :body_of_matter, :text
  end
end
