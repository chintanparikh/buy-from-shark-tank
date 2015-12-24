class AddLinkToListings < ActiveRecord::Migration
  def change
    add_column :listings, :link, :text
  end
end
