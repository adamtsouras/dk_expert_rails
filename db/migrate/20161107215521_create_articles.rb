class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
    	t.text :program
     	t.text :title
      	t.text :category
		t.text :short_description
		t.text :long_description
		t.text :title_image
		t.text :list_image
		t.text :video
      	t.timestamps
    end
  end
end
