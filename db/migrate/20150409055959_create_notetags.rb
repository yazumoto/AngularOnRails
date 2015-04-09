class CreateNotetags < ActiveRecord::Migration
  def change
    create_table :notetags do |t|
      t.references :note, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :notetags, :notes
    add_foreign_key :notetags, :tags
  end
end
