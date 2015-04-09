class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :text
      t.references :notbook, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :notbooks
  end
end
