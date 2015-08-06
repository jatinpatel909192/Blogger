class Article < ActiveRecord::Base
	def up
  create_table :articles do |t|
    t.string :title
    t.text :body
    t.timestamps
  end
end
end