class CreateTagings < ActiveRecord::Migration
  def change
    create_table :tagings do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
