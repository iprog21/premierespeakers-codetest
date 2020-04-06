class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :subtitle
      t.string :publishing_status
      t.string :language
      t.string :publisher_name
      t.string :author
      t.string :number_of_pages
      t.string :publication_date
      t.string :product_form
      t.string :price
      t.text :description, limit: 1.gigabytes - 1
      t.string :height
      t.string :length
      t.string :width
      t.string :weight
      t.string :bisac_code
      t.string :bisac_code2
      t.string :bisac_code3
      t.string :media_file

      t.timestamps
    end
  end
end
