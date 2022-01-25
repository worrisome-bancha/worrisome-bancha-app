class AddUidToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :uid, :string
  end
end
