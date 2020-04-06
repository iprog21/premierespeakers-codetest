class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
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
    end
  end
end

# isbn: b244 if its sibling b221 is 15
# title: b203
# subtitle: b029
# publishing status: b394
# language: b252
# publisher name: b081
# author: is a contributor; b039 or b040 or b041 if its sibling b035 is A01
# number of pages: b061
# publication_date: b003
# product_form: b012
# price: price in USD
# description: othertext d104
# height: measure c094 if its sibbling c093 is 01
# length: measure c094 if its sibling c093 is 03
# width: measure c094 if its sibling c093 is 03
# weight: measure c094 if its sibling c093 is 08
# bisac_code: b064
# bisac_code2: subject b069
# bisac_code3: next code available after bisac_code2
# media_file: mediafile f117
