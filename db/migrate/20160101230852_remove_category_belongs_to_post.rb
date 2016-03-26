class RemoveCategoryBelongsToPost < ActiveRecord::Migration
  def change
  	change_table :categories do |t|
      t.remove_belongs_to :post
    end
  end
end
