class CreateListEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :list_entries do |t|
      t.string :description
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
