class Demo < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.references
      t.timestamps
      puts t
    end
  end
  up()
end
